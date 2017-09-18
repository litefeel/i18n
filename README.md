# i18n

[![Build Status](https://travis-ci.org/litefeel/i18n.svg?branch=master)](https://travis-ci.org/litefeel/i18n)
[![Build status](https://ci.appveyor.com/api/projects/status/qvrrli34rq6yrjje/branch/master?svg=true)](https://ci.appveyor.com/project/litefeel/i18n/branch/master)


### 使用方法

~~~
>i18n.py -h
usage: i18n.py <subcommand> [options] [args]

export translation and import it.

optional arguments:
  -h, --help            show this help message and exit

subcommands:
  {import,i,export,e,check}
    import (i)          import translation to dataset
    export (e)          export dataset to translation
    check               automatically detect the text to be translated
~~~

#### 导出数值表文字到语言包

~~~
>i18n.py export -h
usage: i18n.py export [-h] [-c CONFIG] [-r ROOT]

export dataset to translation

optional arguments:
  -h, --help            show this help message and exit
  -c CONFIG, --config CONFIG
                        config file (default: config.yml)
  -r ROOT, --root ROOT  override rootdir of config
~~~

#### 导入语言包到数值表

~~~
>i18n.py import -h
usage: i18n.py import [-h] [-c CONFIG] [-r ROOT]

import translation to dataset

optional arguments:
  -h, --help            show this help message and exit
  -c CONFIG, --config CONFIG
                        config file (default: config.yml)
  -r ROOT, --root ROOT  override rootdir of config
~~~


#### 自动检测数据表中的语言文字

~~~
>i18n.py check -h
usage: i18n.py check [-h] [-e EXTS] [-o OUTPUT] dirs

automatically detect the text to be translated

positional arguments:
  dirs                  the path for check i18n, path1,path2,path3

optional arguments:
  -h, --help            show this help message and exit
  -e EXTS, --exts EXTS  the extension for check i18n (default: xml,csv)
  -o OUTPUT, --output OUTPUT
                        output filename for check i18n (default: checker.yml)
~~~


#### 配置表(config.yml)

~~~ yml
# YAML

langs:
  - zh_TW
  - en_US

# 以下所有目录都相对于该根目录
# (留空): 命令行的当前目录
# relpath: 相对于config.yml所在的目录
# abspath: 绝对目录
# . : config.yml 所在的目录
rootdir: .

# 语言包目录
langsdir: languages

# 语言包类型
# po    导出为.po文件
# excel 导出为.xlsx文件
translation: excel

# 输出目录
outputdir: output


# 数据表
sheets:
  # 数值表格式
  # <filename>:[fieldNames]
  # 
  datasets/lua/*.lua:
  datasets/csv/tawords.csv: [words, 英雄]
  datasets/excel/attributeData.xlsx: [name]
  datasets/xml/static_act_consortia_task.xml: [des]
~~~
