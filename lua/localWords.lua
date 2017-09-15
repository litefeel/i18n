﻿
local localWords = {
    ["dateString"] = "%s年%s月%s日",
    ["dateString2"] = "%s月%s日",
    ["timeString"] = "%s时%s分%s秒",
    ["retryHttpTitle"] = "加载失败",
    ["retryHttp"] = "加载失败,是否重试?",
    ["retryString"] = "重试",
    ["serverError"] = "服务错误",
    ["serverErrorString"] = "出错拉，请麻烦再试一次吧",
    ["timeoutTitle"] = "请求超时",
    ["askRetryString"] = "请求失败，是否重试？",
    ["powerNoticTitle"] = "免费体力",
    ["powerNoticContent"] = "有免费体力可领,快来领哦~~",
    ["arenaNoticTitle"] = "竞技场",
    ["arenaNoticContent"] = "竞技场快要结算了,你多少名了?",
    ["yesToExit"] = "是否退出游戏?",
    ["wifiBugTitle"] = "更新提醒",
    ["wifiBugContent"] = "没有网络,请连网后再试",
    ["noInternet"] = "没有网络",
    ["wifiBugContent2"] = "是否使用移动网络流量下载更新?",
    ["useWifiBtn"] = "稍后更新",
    ["use3GBtn"] = "立即更新",
    ["noNewVer"] = "没有新版本",
    ["downloadStr"] = "已下载 %d%%",
    ["downloadFinished"] = "下载已完成",
    ["updaterTitle"] = "更新",
    ["updaterContent"] = "版本更新,需要下载最新安装包",
    ["level"] ="等级",
    ["lvStr"] = "%d级",
    ["winRate"] = "胜率：%d%%",
    ["attack"] = "攻击",
    ["hp"]="血量",
    ["speed"] = "攻速",
    ["tenacity"] = "韧性",
    ["hit"] = "命中",
    ["crit"] = "暴击",
    ["dodge"] = "闪避",
    ["range"] = "范围",
    ["pvpskill_rate"]="技能触发",
    ["penetrate"]="穿透",
    ["lucky"] = "幸运：",
    ["attackSpeed"] = "攻速：",
    ["range"] = "范围",
    ["addBlood"] = "加血：",
    ["skillAttack"] = "技能伤害：",
    ["critAttack"] = "暴击伤害：",
    ["blood"] = "血量：",
    ["pvpSkillOpenTips"] = "船长等级20级开启",
    ["waveInfo_map"] = "%s",
    ["waveInfo_wave"] = "%d",
    ["rec_info"] = "    温馨提示：高级寻宝有较大概率会收集到高星级伙伴。系统会在玩家进行一次寻宝后随机触发事件，提高玩家下次寻宝获得高品质伙伴及道具的概率。玩家每24小时可获得一次免费中级寻宝的机会，每72小时可获得一次免费高级寻宝的机会，千万不要忘记哦~~~",
    ["pri_info"] = "近郊探险可获得1-2星伙伴及道具，10连抽至少可获得一个优秀品质道具",
    ["sen_info"] = "远洋探险可获得1-4星伙伴及道具，10连抽至少可获得一个伙伴",
    ["free"] = "免费",
    ["shuishou"] = "水手",
    ["chuanyi"] = "船医",
    ["hanghaishi"] = "航海士",
    ["jujishou"] = "狙击手",
    ["pvpWaveLevel"] = "%d星%d级",
    ["attack_yoke"] = "攻击",
    ["hp_yoke"]="血量",
    ["speed_yoke"] = "攻速",
    ["tenacity_yoke"] = "韧性",
    ["hit_yoke"] = "命中",
    ["crit_yoke"] = "暴击",
    ["dodge_yoke"] = "闪避",
    ["attack_suit"] = "攻击",
    ["hp_suit"]="血量",
    ["speed_suit"] = "攻速",
    ["tenacity_suit"] = "韧性",
    ["hit_suit"] = "命中",
    ["crit_suit"] = "暴击",
    ["dodge_suit"] = "闪避",
    ["pvpskill_rate_suit"] = "技能触发",
    ["penetrate_suit"] = "穿透",
    ["rage_suit"] = "怒气",
    ["defense_suit"] = "防御",
    ["baoJiShangHai"] = "暴击伤害",
    ["no_time"] = "领取时间",
    ["received"] = "已领取",
    ["tower_num"] = "第%d层",
    ["chapter_num1"] = "第一章",
    ["chapter_num2"] = "第二章",
    ["chapter_num3"] = "第三章",
    ["chapter_num4"] = "第四章",
    ["chapter_num5"] = "第五章",
    ["chapter_num6"] = "第六章",
    ["chapter_num7"] = "第七章",
    ["chapter_num8"] = "第八章",
    ["chapter_num9"] = "第九章",
    ["chapter_num10"] = "第十章",
    ["hp_grow"] ="血量成长",
    ["crit_grow"] ="暴击成长",
    ["attack_grow"] ="攻击成长",
    ["speed_grow"]="攻速成长",
    ["penetrate_grow"]="穿透成长",
    ["dodge_grow"] ="闪避成长",
    ["hit_grow"] ="命中成长",
    ["tenacity_grow"] ="韧性成长",
    ["yuan"] = "元",
    ["magic_cost"]="消耗",
    ["saodangTime"] = "完成%d次扫荡",
    ["baseattack"]="技能威力",
    ["times_limit"]="达到次数上限",
    ["buy_times"] = "购买次数需要",
    ["wave_level_limit"]="等级达到%d级解锁关卡",
    ["refresh_time"] = "下次刷新时间%02d:%02d:%02d",
    ["over_time"] = "商人还有%02d:%02d:%02d后离开",
    ["action_refresh_title"] = "刷新商店需要",
    ["action_buy_title"] = "购买物品需要",
    ["open_shop2"] = "是否永久开启黑市",
    ["open_shop3"] = "是否永久开启神秘商店",
    ["open_shop"] = "升级到VIP%d永久开启",
    ["conversion_ready"] = "确认兑换所选物品？",
    ["tower_reset_ready"] = "重置方尖塔",
    ["tower_shop_condition"] = "满星通关方尖塔%d关(%d层)",
    ["action_consortia_create"] = "创建公会需要",
    ["action_consortia_update"] = "更换公会徽章需要",
    ["action_refresh_tower"] = "购买重置次数需要",
    ["action_refresh_cd"] = "重置CD需要",
    ["show_reset_times"] = "(今日已重置%d次)",
    ["show_buy_times"] = "(今日已购买%d次)",
    ["lock_message"] = "暂未开放",
    ["consortia_zhiwei1"] = "会长",
    ["consortia_zhiwei2"] = "副会长",
    ["consortia_log1"] = "创建了公会",
    ["consortia_log2"] = "加入了公会",
    ["consortia_log3"] = "退出了公会",
    ["consortia_log4"] = "提升为副会长",
    ["consortia_log5"] = "撤除了副会长职务",
    ["consortia_log6"] = "将会长职务转让于",
    ["consortia_log7"] = "移出了公会",
    ["consortia_log8"] = "修改了公会公告",
    ["consortia_log9"] = "修改了公会图标",
    ["consortia_log10"] = "开始升级公会大厅",
    ["consortia_log11"] = "开始升级战争学院",
    ["consortia_log12"] = "开始升级公会商店",
    ["consortia_log13"] = "开始升级采矿场",
    ["consortia_log14"] = "开始升级伐木场",
    ["consortia_exit_tips"] = "退出公会后，今日不能再加入\n其他公会，确认退出吗",
    ["consortia_notin"] = "尚未加入公会",
    ["consortia_zhiwei10"] = "普通成员",
    ["message_times_over"] = "今日次数已用完",
    ["message_consortia_upLevel"] = "只有会长才能升级",
    ["message_consortia_notice"] = "公告长度不合法",
    ["message_consortia_name"] = "公会名长度不合法",
    ["message_consortia_key"] = "请输入公会名称或ID",
    ["message_unlock_type1"] = "需%s级解锁 %s",
    ["message_unlock_type2"] = "通过%s解锁 %s",
    ["message_unlock_type3"] = "通过获得装备解锁",
    ["message_general1"] = "充值成功",
    ["message_general2"] = "购买成功",
    ["message_general3"] = "领取成功",
    ["message_important4"] = "选择一个增益BUFF",
    ["message_important5"] = "角色名不合法",
    ["message_important6"] = "角色名已经被占用",
    ["recharge_des"] = "再充值<img src='ui/common/moneyIcon.png'scale=0.5/><div fontcolor=##00ff00>%d</div>即可成为VIP%d",
    ["recharge_des1"] =  "累计充值<img src='ui/common/moneyIcon.png'scale=0.5/><div fontcolor=##0BFC00>%d</div>既享受本阶级特权",
    ["recharge_des2"] = "包含VIP%d所有特权",
    ["recharge_des3"] = "%d次",
    ["arena_award1"]="第%d名:",
    ["arena_award2"]="第%d-%d名:",
    ["arena_award1_1"]="第%d名",
    ["arena_award1_2"]="第%d-%d名",
    ["act_title_1"]="单笔充值",
    ["act_title_2"]="累计充值",
    ["act_title_3"]="累计消费",
    ["act_title_4"]="其他活动",
    ["act_title_5"]="其他活动",
    ["resetPveTimesTitle"] = "重置挑战次数",
    ["fightTimesTitle"] = "挑战次数:%d/%d",
    ["awrad_title"] = "恭喜获得",
    ["emil_hint_fujian"] = "有未领取的附件，请领取！",
    ["partner_nofind"] = "伙伴不存在",
    ["wan"] = "万",
    ["damage"]="基础伤害",
    ["defense"]="防御",
    ["talentunlock"]="解锁%d阶天赋树",
    ["talentactive"]="激活天赋-%s",
    ["pveMapLevel"] = "第%s关",
    ["jinyinStr"] = "精英",
    ["chapter"] = "副本",
    ["signIn_buqian"] = "补签需要消耗",
    ["duihuan_success"] = "兑换成功",
    ["duihuan_equip"] = "一次最多只能选中8件装备",
    ["duihuan_addzizhuang"] = "添加紫装以上品质",
    ["pveWaveNum"] = "第%s波",
    ["bufftype_1"]="攻击",
    ["bufftype_2"]="速度",
    ["bufftype_3"]="暴击",
    ["bufftype_4"]="防御",
    ["bufftype_5"]="技能触发",
    ["bufftype_6"]="攻击倍数",
    ["bufftype_7"]="伤害放大",
    ["bufftype_8"]="石化",
    ["bufftype_9"]="攻击方中毒流血",
    ["bufftype_10"]="命中",
    ["bufftype_11"]="复活",
    ["bufftype_12"]="只能普通攻击",
    ["bufftype_13"]="火焰盾",
    ["bufftype_16"]="扣血",
    ["bufftype_21"]="落石",
	["bufftype_32"]="灼烧",
    ["pvp_countdown"]="%d回合后可用",
    ["talentgrade1"]="一阶",
    ["talentgrade2"]="二阶",
    ["talentgrade3"]="三阶",
    ["talentgrade4"]="四阶",
    ["talentgrade5"]="五阶",
    ["tianFu"] = "天赋",
    ["taweiIsEmpty"] = "还有英雄未上阵!",
    ["taweiIsEmpty2"] = "还有英雄未上阵!",
    ["talentGradeUpgrade1"]="英雄品阶提升为绿色+",
    ["talentGradeUpgrade2"]="英雄品阶提升为蓝色+",
    ["talentGradeUpgrade3"]="英雄品阶提升为紫色+",
    ["talentGradeUpgrade4"]="英雄品阶提升为橙色+",
    ["talentGradeUpgrade5"]="英雄品阶提升为金色+",
    ["arenarule"]="每天21:00进行结算，根据排名发放奖励，详细奖励规则如下：",
    ["pveRestartGame"]="是否重新开始?",
    ["pveQuitGame"]="是否离开战斗?",
    ["talentwarning"] ="突破%d阶后自动激活该天赋",
    ["deviltips1"]="可免费挑战",
    ["devilcost"]="x%d可兑换一次挑战机会",
    ["deviltime"]="%s后获得1次挑战机会",
    ["challengedeviltitle"]="Lv.%d奖励预览",
    ["deviltips1"]="完成挑战后可手动领取",
    ["deviltips2"]="已领取奖励",
    ["devilchallenge1"]="击败%d级BOSS",
    ["deviladdchance"]="增加一次挑战机会需花费",
    ["devillock"]="需升级到11级",
    ["towerAwardTips"] = "本层通关后获得以上奖励",
    ["serverrantitle1"]="等级排行",
    ["serverrantitle2"]="回廊排行",
    ["serverrantitle3"]="方尖塔排行",
    ["serverrantitle4"]="镜像试练排行",
    ["serverrantitle5"]="竞技场排行",
    ["serverrantitle6"]="成就排行",
    ["serverrantitle7"]="蛮族入侵排行",
    ["serverrantypename1"]="等级",
    ["serverrantypename2"]="波次",
    ["serverrantypename3"]="方尖塔关卡",
    ["serverrantypename4"]="试炼积分",
    ["serverrantypename5"]="竞技场排名",
    ["serverrantypename6"]="成就点",
    ["serverrantypename7"]="Boss等级",
    ["severday"]="第%d天",
    ["waveHeroLevelNeed"] = "所有上阵英雄需达到%d级",
    ["notCreated"] = "建筑未建成",
    ["friendActNeed"] = "需要积分\n%d/%d",
    ["saveComplete"] = "保存完成",
    ["clipTextComplete"] = "复制完成",
    ["finishedQuest"] = "(已完成)",
    ["unfinishedQuest"] = "(进行中)",
    ["lordCurrencyNeed"] = "领主功勋不足",
    ["useZuanShi"] = "是否花费%d立刻购买",
    ["notEnoughVipBuyAdventureQuest"] = "vip购买探险任务次数已满",
    ["adventureQuestBuyLimit"] = "购买次数%d/%d",
    ["linzhu"] = "领主",
    ["kaifang"] = "开放",
    ["xiajia"] = "下架",
    ["weiKaiFang"] = "该物品未开放购买",
    ["yiXiaJia"] = "该物品已下架",
    ["vipBuyLimit"] = "已达到vip购买最大限制",
    ["yigoumai"] = "本周已购买",
    ["unlockJie"] = "%d阶开启",
    ["mianFeiCiSuWu"] = "今日免费次数已用完",
    ["mianFeiGouMai"] = "可免费购买",
    ["houMianFei"] = "后免费",
    ["qingQiuShangPing"] = "正在获取商品队列，请稍后。",
    ["shangPingKong"] = "商品队列为空。",
    ["unlockByJie"] = "需%s阶开启",
    ["confirmSaveXilian"] = "现在升级,洗炼属性将\n不会保存，是否继续？",
    ["saveXilianNot"] = "还未洗炼",
    ["costNotEnought"] = "材料不足",
    ["dangQianJiaCheng"] = "当前加成",
    ["wuXingChengSePinZhiJiaCheng"] = "五星橙色品质加成",
    ["yingXiong"] = "英雄",
    ["xing"] = "星",
    ["zhanLi"] = "战力",
    ["zuiGaoXingShu"] = "最高星数",
    ["liShiZuiGao"] = "历史最高",
    ["bo"] = "波",
    ["jiFeng"] = "积分",
    ["lingZhuDengJi"] = "领主等级",
    ["yiJiaRuGongHui"] = "你已加入公会",
    ["shouJi"] = "收集",
    ["gongHuiDengJi"] = "公会等级",
    ["zuiGaoXingShu"] = "最高星数",
    ["liShiZuiGao"] = "历史最高",
    ["jie"] = "阶",
    ["weiShangBang"] = "未上榜",
    ["loginDay"] = "游戏%s日登录",
    ["huodongLianXuChongZhi"] = "本次充值%d钻石可获得以下奖励",
    ["dao"] = "到",
    ["lingQu"] = "领取",
    ["keLingQu"] = "可领取",
    ["keWanCheng"] = "可完成",
    ["houLingQu"] = "后领取",
    ["houKeLingQu"] = "后可领取",
    ["leiJiChouQu"] = "累计抽取\n%d次",
    ["openDayTime"] = "开启时间：周%s",
    ["residueDegree"] = "剩余次数 %s/%s",
    ["nianYueRi"] = "%d年%02d月%02d日%02d:%02d",
    ["tiShengVipDengJi"] = "次数不足,请提升VIP等级",
    ["huaZuanShiJieShuRengWu"] = "是否花费%d钻石结束任务",
    ["huaZuanShiMaiRengWu"] = "是否花费%d钻石购买任务",
    ["tiaoZhanCiShuBuGou"] = "挑战剩余次数不够!",
    ["lengQueShiJianWeiDao"] = "冷却时间未到!",
    ["zengJiaTiaoZhanCiShu"] = "增加一次挑战机会需要花费",
    ["zuanShiBuZu"] = "钻石不足",
    ["qianQuChongZhi"] = "前去充值",
    ["chongZhiTiaoZhanCiShu"] = "立即重置挑战需花费",
    ["yongYouJiJian"] = "拥有%d件",
    ["xianTuoZhuangBei"] = "请先脱掉装备",
    ["buKeShouMai"] = "不可售卖",
    ["baoXiang"] = "宝箱",
    ["xiaoHaoPing"] = "消耗品",
    ["caiLiao"] = "材料",
    ["baoShi"] = "宝石",
    ["gongNeng"] = "功能",
    ["qiTa"] = "其他",
    ["woShi"] = "我是",
    ["suiPianShuLiangBuZu"] = "碎片数量不足",
    ["shuRuWeiKong"] = "输入为空!",
    ["mingGanZiFu"] = "不能包含敏感字符",
    ["faYanGuoKuai"] = "发言过快!",
    ["lingZhuGongXun"] = "领主功勋",
    ["zanWeiKaiFang"] = "暂未开放，敬请期待",
    ["jian"] = "拥有%d件",
    ["gongJiZengJia"] = "攻击力增加",
    ["gongJiSuDuZengJia"] = "攻击速度增加",
    ["rengXingZengJia"] = "韧性增加",
    ["xianBiLvZengJia"] = "闪避率增加",
    ["mingZhongLvZengJia"] = "命中率增加",
    ["baoJiZengJia"] = "暴击增加",
    ["xueLiangZengJia"] = "血量增加",
    ["shangHaiZengJia"] = "伤害增加",
    ["paiMing"] = "排名",
    ["jiNengXiaoGuo"] = "技能效果",
    ["taFangJiNeng"] = "塔防技能",
    ["wuLiGongJi"] = "物理攻击",
    ["moFaGongJi"] = "魔法攻击",
    ["duiZhanJiNeng"] = "对战技能",
    ["tongGuoTianFuJieSuo"] = "通过天赋解锁",
    ["zhiYouHuiZhangNengShengji"] = "只有会长能升级",
    ["jieSuoChengGong"] = "解锁成功",
    ["shiJian"] = "%d年%02d月%02d日",
    ["xianZaiBuNengTiaoZhan"] = "现在不能挑战",
    ["zhengZaiTiaoZhan"] = "正在挑战...",
    ["diJiGuan"] = "第%d关",
    ["xuYaoGongHuiHuoYueZhi"] = "重置第%d章需要公会活跃值",
    ["fengZhongQian"] = "%d分钟前",
    ["xiaoShiQian"] = "%d小时前",
    ["tianQian"] = "%d天前",
    ["hengJiuMeiYouShangXian"] = "很久没有上线",
    ["faMuChang"] = "伐木场",
    ["caiShiChang"] = "采石场",
    ["tiShengHuiZhang"] = "是否将%s提升为会长",
    ["tiShengFuHuiZhang"] = "是否将%s提升为副会长",
    ["tiChuGongHui"] = "是否将%s踢出公会",
    ["quDaiHuiZhang"] = "是否取代会长",
    ["jieChuFuHuiZhang"] = "是否将%s解除副会长",
    ["tiaoZhangYiJieShu"] = "挑战已结束!",
    ["devilTips"] = "1-3名奖励需击杀<div fontcolor=#491B10>%s级Boss</div>，否则奖励与4-5名相同！",
    ["touKui"] = "头盔",
    ["shiPing"] = "饰品",
    ["yiFu"] = "衣服",
    ["xieZi"] = "鞋子",
    ["wuQi"] = "武器",
    ["chengZhang"] = "成长",
    ["buJia"] = "布甲",
    ["piJia"] = "皮甲",
    ["zhongJia"] = "重甲",
    ["yiGouMai"] = "已购买",
    ["juLiTiaoZhanJieShu"] = "距离挑战结束",
    ["juLiDuiHuanJieShu"] = "距离兑换结束",
    ["jinBiBuZu"] = "金币不足",
    ["xuYaoDianJingShou"] = "需要使用点金手",
    ["jiaoSeJieShao"] = "角色介绍",
    ["taFangNengLi"] = "塔防能力",
    ["duiZhanNengLi"] = "对战能力",
    ["huoBanJiBan"] = "伙伴羁绊",
    ["xiangXiShuXing"] = "详细属性",
    ["yiJiHuo"] = "已激活",
    ["jiBanShuXing"] = "羁绊属性",
    ["createYokeDes"] = "搜集以下等级品质的英雄可获得相应属性加成",
    ["zhuDongJiNeng"] = "主动技能",
    ["beiDongJiNeng"] = "被动技能",
    ["puGong"] = "普攻",
    ["beiGong"] = "被动",
    ["daJiNeng"] = "大技能",
    ["xiaoJiNeng"] = "小技能",
    ["zhiNengSengJiHuaFei"] = "只能升到%d级花费",
    ["quanBuShengJiHuaFei"] = "全部升级需花费",
    ["keYiShengXing"] = "可以升星",
    ["shengXingHaiXuSuiPian"] = "升星还需碎片",
    ["shengXing"] = "升星",
    ["shengXingXiaoGuo"] = "升星效果",
    ["qiangHua"] = "强化",
    ["qiangHuaXiaoGuo"] = "强化效果",
    ["shangCengTianFuWeiJiHuo"] = "上层天赋未激活!",
    ["dengJiBuZu"] = "等级不足!",
    ["xuYaoDengJi"] = "需要等级:",
    ["yiXiangQian"] = "已镶嵌",
    ["xiangQian"] = "镶嵌",
    ["jiBenXinXi"] = "基本信息",
    ["zengJiaJiNengDianHuaFei"] = "增加%d个技能点需要花费",
    ["yiDaDaoZuiDaXingJi"] = "已达最大星级",
    ["xuYaoXiaoHao"] = "需要消耗%d个",
    ["tianFuWeiJiHuo"] = "前阶天赋未激活",
    ["xuShouJiSuoYouFuWen"] = "需收集所有符文",
    ["xuYaoXingJi"] = "需要星级:",
    ["yiDaDaoZuiGaoTianFu"] = "已达到天赋最高等级",
    ["qingJieSuoTianFu"] = "请解锁天赋:",
    ["dangQianTianFu"] = "当前天赋",
    ["xiaJiTianFu"] = "下级天赋",
    ["yingXiongPinJieTiSheng"] = "英雄品阶提升",
    ["dangQianDengJi"] = "当前等级",
    ["xueXi"] = "学习",
    ["yi"] = "已",
    ["jieSuoTianfu"] = "请解锁天赋:",
    ["huaZuanShiJieSuoXiaoDui"] = "是否花费%d钻石解锁该位置",
    ["liPingMaTips"] = "礼品码至少10到15位",
    ["banBenHao"] = "版本号",
    ["chongZhi"] = "充值",
    ["teQuan"] = "特权",
    ["teMaiChang"] = "特卖场",
    ["shangCheng"] = "商城",
    ["daoDaoVipCaiNengGouMai"] = "达到VIP%d才能购买",
    ["diJiBo"] = "第%d波",
    ["momo"] = "莫莫",
    ["geLiFeng"] = "格里芬",
    ["miSiTe"] = "米斯特",
    ["anJie"] = "安洁",
    ["miNuoSi"] = "米诺斯",
    ["nvWang"] = "女王",
    ["zhiShaoXuanZeYiGeRenShangZheng"] = "至少选择一个人上阵!",
    ["haoWeiTianJiaYingXiong"] = "号位添加英雄",
    ["woFangShengLi"] = "我方胜利",
    ["woFangShiBai"] = "我方失败",
    ["chuShiHuaZhanDouZiYuan"] = "正在初始化战斗资源",
    ["gouMaiYiBen"] = "购买一本",
    ["gouMaiShiBen"] = "购买十个本",
    ["shiYongJuanZhou"] = "使用卷轴",
    ["mianFeiGouMai"] = "免费购买",
    ["yiYongYouGaiYingXiong"] = "您已拥有该英雄\n自动转化为%s碎片",
    ["juLiHuoDongKaiQi"] = "距离活动开启",
    ["juLiHuoDongJieShu"] = "距离活动结束",
    ["huoDongYiJingJieShu"] = "活动已经结束",
    ["chuShouChengGong"] = "出售成功",
    ["gouMaiWuPin"] = "购买物品",
    ["diJiYouXian"] = "第%s优先",
    ["num0"] = "0",
    ["num1"] = "一",
    ["num2"] = "二",
    ["num3"] = "三",
    ["num4"] = "四",
    ["num5"] = "五",
    ["num6"] = "六",
    ["num7"] = "七",
    ["num8"] = "八",
    ["num9"] = "九",
    ["num10"] = "十",
    ["num11"] = "十一",
    ["num12"] = "十二",
    ["num13"] = "十三",
    ["diJiChang"] = "第%s场",
    ["yiDaoZuiGaoCeng"] = "已到最高层",
    ["manXingTongGuanCaiNengSaoDang"] = "满星通关才能扫荡",
    ["danChongFanLi"] = "单充返利",
    ["leiJiChongZhi"] = "累计充值",
    ["leiJixiaoFei"] = "累计消费",
    ["shifouChongZhi"] = "是否充值?",
    ["chongZhiDaFanKui"] = "充值大反馈",
    ["xingYunZhiSheng"] = "幸运之神",
    ["haoYouYaoQin"] = "好友邀请",
    ["xianShiFuLi"] = "限时福利",
    ["dengLuSongLi"] = "登录送礼",
    ["dengLuSongLi2"] = "登录送礼2",
    ["lianXuChongZhi"] = "连续充值",
    ["tianXuanZhiShuChouDaLi"] = "天选之书抽大礼",
    ["tianCiShengZhuangChouDaLi"] = "专属打造送大礼",
    ["kaiShiYouXi"] = "开始游戏",
    ["yingXiongZhanLi"] = "英雄战力",
    ["yingXiongShouJi"] = "英雄收集",
    ["gongHuiDengJi"] = "公会等级",
    ["jingJiChang"] = "竞技场",
    ["moFaFangJianTa"] = "魔法方尖塔",
    ["miZhiHuiLang"] = "迷之回廊",
    ["jingXiangShiLian"] = "镜像试炼",
    ["lingZhuDengJi"] = "领主等级",
    ["huoDongKaiShiShiJian"] = "活动开始时间",
    ["huoDongJieShuShiJian"] = "活动结束时间",
    ["huoDongShengYuShiJian"] = "活动剩余时间",
    ["magicPalaceRule"] = "系统说明:\n1.魔宫共10关，本周进度会一直保留，<div fontcolor=#ff0000>每周一零点会全部重置</div>。\n2.关卡胜利后，当天不能重复挑战，次日可以再次挑战。\n3.<div fontcolor=#ff0000>伙伴每天只能出战一次，不论战斗是否胜利</div>。\n4.每天都会有特定关卡有<div fontcolor=#ff0000>额外奖励</div>。\n5.魔宫中环境每周都会变化，好好利用这些环境，能极大的降低难度。",
    ["wormholeRule"] = "1.每周日23:00关闭地图，届时不能进行出征等操作，在次日九点关闭系统，九点到十点之间通过邮件发放奖励，十点重新进行开放\n2.每天可以免费进行八次出征\n3.每次攻占城池成功，可以在五分钟内进行防守阵容调整\n4.占领城池后，防守阵容中的英雄不能参与出征\n5.一个玩家只能占领一个城池，不包括土匪窝\n6.在进行\"掠夺/占领\"结束之后都会获得相对应的积分，积分可以参与积分排行和积分奖励\n7.掠夺过程中，攻击方对防守方造成一定的血量到达某个百分比，才会获得掠夺收益。",
    ["wormholeLoseCity"] = "撤离城池，城池会进入五分钟\n的保护时间，保护时间结束后\n会获得城池奖励",
    ["wormholeDefenseTimeOut"] = "防守配置倒计时",
    ["wormholeLoseCitySuccess"] = "撤离城池成功",
    ["wormholeHintDefense"] = "是否进行防守配置",
    ["wormholeFightTimesHint"] = "挑战次数不足，是否购买",
    ["wormholeHintDefenseTeam"] = "成功占领城池%s\n有五分钟的时间进行防守配置",
    ["noEveryTimeRefresh"] = "请不要频繁刷新",
    ["refreshComplete"] = "刷新完成",
    ["jiHuoYingxiong"] = "激活该英雄需要",
    ["treeTimes"] = "今日许愿次数 %d/10",
    ["zhuanPanChouDaoJiangli"] = "%s在%s转盘中获得%d个%s",
    ["jinbi"] = "金币",
    ["zuanshi"] = "钻石",
    ["zaiChouBaoXiang"] = "再抽%d次可获得1个幸运宝箱",
    ["shengyushijian"] = "剩余时间",
    ["shangjia"] = "后上架",
    ["xudadaodengji"] = "需达到%d级",
    ["zhuanPanJiFengBuZu"] = "转盘积分不足",
    ["duiHuanHuoDong"] = "兑换活动",
    ["tiLiHuanHuan"] = "体力返还",
    ["renWuHuoDong"] = "任务活动",
    ["limitBuyAct"] = "限购商城",
    ["gouMaiTiLi"] = "累计购买体力\n%d次",
    ["wuPinBuZu"] = "%s不足",
    ["daoJu"] = "道具",
    ["tiLiYiChu"] = "体力溢出，无法领取包含体力的邮件",
    ["youJianJiangLiYiLingQuWan"] = "奖励已领取",
    ["jiangLi"] = "奖励",
    ["haveNoRank"] = "未入榜",
    ["scoreReward"] = "达到指定积分可领取奖励",
    ["jiesuandaojishi"] = "本周副本结算倒计时:",
    ["jiesuanzhong"] = "本周副本结算中:",
    ["consoriaRank"] = "历史排行",
    ["consoriaNowRank"] = "本周排行",
    ["consoriaLook"] = "查看",
    ["chouka_des_1"] = "最高可获得A阶英雄",
    ["chouka_des_2"] = "最高可获得SS阶英雄",
    ["chouka_des_3"] = "最高可获得紫色品质装备/橙色品质碎片",
    ["chouka_des_4"] = "可获得专属装备碎片/专属升级材料",
    ["gouMaiShiBen"] = "购买\n十次",
    ["shengYuNianFeiCiShu"] = "剩余免费次数%s",
    ["biDeZhuanShuLiBao"] = "再抽%s次必得A级以上英雄",
    ["biDeYingXiong"] = "再抽%s次必得专属大礼包",
    ["queRen"] = "确认",
    ["autoLingqu"] = "通关副本获取",
    ["jinyinPowerConfirm"] = "道具不足，提升vip获取更多",
    ["heCheng"] = "合成",
    ["guangqiajindu"] = "进度:关卡%d",
    ["consortiaFieldRule"] = "公会副本说明:\n1.公会副本目前开放10关，每周公会成员都可以从第一关开始挑战，每人每天可以免费挑战3次。\n2.<div fontcolor=#ff0000>公会副本进度每周会进行重置，结算时间为每周日23：00至周一01：00，结算完成后，公会进度会全部重置。</div>\n3.每周的排名奖励会通过邮件发放，奖励由公会进度与玩家所在公会内的DPS排名共同决定。\n4.<div fontcolor=#ff0000>同一时间只可以有一位公会成员挑战公会副本。</div>\n5.每完成一个公会副本，公会的所有成员都可以收到一份公会贡献的奖励。",
    ["timeDrawRule"] = "限时抽将说明:\n1.使用钻石进行抽奖1次可以获得10积分，十连抽可以获得100积分。\n2.积分达到对应阶段可以领取积分宝箱内奖励。\n3.活动期间玩家总积分达到<div fontcolor=#ff0000>500以上</div>，系统会根据玩家获得的总积分进行排名，排名在前30名的玩家会获得排名奖励，在活动结束后系统会按照活动结束时的排名奖励发放邮件至玩家邮箱。\n4.<div fontcolor=#ff0000>积分仅在本期活动内有效，活动结束后积分清空</div>",
    ["awardItemOut"] = "道具超出上限，是否继续领取？",
    ["noGuild"] = "未加入公会",
    ["noPhoneNum"] = "游客",
    ["martialMatch"] = "%d胜%d负",
    ["martialRank"] = "英雄争霸",
    ["martialScore"] = "我的积分",
    ["winNum"] = "胜场",
    ["martialSignUp"] = "报名倒计时",
    ["martialFront"] = "预赛倒计时",
    ["martialFinal"] = "决赛倒计时",
    ["martialKnockout"] = "淘汰赛倒计时",
    ["martialEnd"] = "今日比赛结束",
    ["martialServerEnd"] = "本周比赛结束",
    ["martialTimeDown"] = "倒计时",
    ["martialKnockoutMatch"] = "淘汰赛倒计时",
    ["martialRestMatch"] = "目前休赛",
    ["martialServerLimit"] = "报名时间：周一06:00--18:30",
    ["martialBegain"] = "准备 ",
    ["martialLock"] = "锁定 ",
    ["martialFight"] = "战斗 ",
    ["offLine"] = "离线",
    ["onLine"] = "在线",
    ["nothing"] = "无",
    ["noMartialMatch"] = "未进入决赛",
    ["matchNoStart"] = "您当前无比赛",
    ["playerLose"] = "您已经被淘汰",
    ["playerNoFinal"] = "今日比赛结束",
    ["rankReward"] = "排行奖励",
    ["maritalNoBattle"] = "当前无比赛阵容",
    ["maritalNoSignSuccess"] = "报名成功",
    ["martialNoMatchNow"] = "目前没有比赛",
    ["martialKnockoutNum"] = "第%s轮",
    ["martialKnockoutNum1"] = "淘汰赛第%s轮",
    ["martialEightMatch"] = "八强选拔赛",
    ["martialFinalMatch"] = "决赛",
    ["martialNoSignupInfo"] = "您未报名参赛",
    ["martialNoConsortiaInfo"] = "您未加入公会",
    ["martialServerPlayerRank"] = "玩家信息",
    ["martialNoFight"] = "(轮空或出局)",
    ["martialNoFight1"] = "(轮空)",
    ["martialNoFight2"] = "该位置轮空",
    ["martialNumMax"] = "人数超出上限",
    ["martialSignHeroNum"] = "报名至少需要一个将",
    ["martialSignTitle"] = "跨服赛报名后英雄状态锁定\n无法通过换装改变属性",
    ["martialServerConsortiaRank"] = "公会信息",
    ["martialLastMatch"] = "我的上期赛程",
    ["matchRankTip"] = "第%d名以下",
    ["martialNoOpen"] = "斗技场将于开服第10天解锁",
    ["martialOpenTime"] = "距斗技场开启:\n",
    ["martialServerOpenTime"] = "距开启:\n",
    ["clientNotInstalled"] = "需要安装客户端哦！",
    ["carnivalHelpLabel"] = "积分嘉年华\n1.玩家可用基础积分乘以各种倍率获得“嘉年华积分”，积分可在积分商城兑换道具。\n2.根据玩家登录天数、VIP等级、当日充值钻石、当日消费钻石转盘倍率不同。\n3.玩家可花费金币或钻石重新转取倍率系数，领取积分后当日将无法再次转动转盘。\n4.满足一定条件后转盘可升级，转盘等级越高倍率越高。\n5.<div fontcolor=#ff0000>活动第1至第4天可转动转盘，第五天仅能够获得给力回馈积分。</div>\n6.<div fontcolor=#ff0000>活动结束积分清零，不保留到下次活动。</div>\n给力回馈\n1.活动第2天起，玩家充值一定金额后可按比例获得前一天的积分。\n2.返还积分为前一天转盘获得积分总和。";
    ["bangZhuShuoMing"] = "帮助说明";
    ["leiJiJiFeng"] = "第%d日累计积分",
    ["jiangLiBuNengLingQu"] = "当前不能领取奖励",
    ["zhuanDong"] = "转动",
    ["shengJi"] = "升级",
    ["xiaYiDang3"] = "下一档:登录%d天",
    ["xiaYiDang4"] = "下一档:vip%d级",
    ["xiaYiDang2"] = "下一档:消费%d钻",
    ["xiaYiDang1"] = "下一档:充值%d钻",
    ["dangQian3"] = "登陆天数:",
    ["dangQian4"] = "VIP等级:",
    ["dangQian2"] = "今日消耗:",
    ["dangQian1"] = "今日充值:",
    ["jiaNianHuaBeiLv"] = "<div shadow=2,-2,0.5,#000000>基础积分:</div><div shadow=2,-2,0.5,#000000>%d</div> <div fontcolor=#4AF709 shadow=2,-2,0.5,#000000>x</div> <div shadow=2,-2,0.5,#000000>登录倍率:</div><div fontcolor=#C46908 shadow=2,-2,0.5,#000000>%d</div> <div fontcolor=#4AF709 shadow=2,-2,0.5,#000000>x</div> <div shadow=2,-2,0.5,#000000>vip倍率:</div><div fontcolor=#C46908 shadow=2,-2,0.5,#000000>%d</div> <div fontcolor=#4AF709 shadow=2,-2,0.5,#000000>x</div> <div shadow=2,-2,0.5,#000000>消费倍率:</div><div fontcolor=#C46908 shadow=2,-2,0.5,#000000>%d</div> <div fontcolor=#4AF709 shadow=2,-2,0.5,#000000>x</div> <div shadow=2,-2,0.5,#000000>充值倍率:</div><div fontcolor=#C46908 shadow=2,-2,0.5,#000000>%d</div><div fontcolor=#4AF709 shadow=2,-2,0.5,#000000>=</div><div fontcolor=#C46908 shadow=2,-2,0.5,#000000>%d</div></div>",
    ["jifeng"] = "积分",
    ["shengJiZhuanPan"] = "转盘升级后,积分将重置。",
    ["jiaNianHuaZuiHouYiTian"] = "转盘部分关闭无法获取积分",
    ["jifengBuZu"] = "积分不足",
    ["shangPingShengYuShuLiangBuZu"] = "该商品剩余数量不足",
    ["goumaiJiaNianHuaShangPing"] = "确定花%d积分购买该商品吗?",
    ["zuiGaoDang"] = "已达到最高档",
    ["lingQuJiaoNianHuaJiFeng"] = "领取后当日将无法再次改变积分值",
    ["inputNewPassword"] = "输入新密码",
    ["inputNewPasswordAgain"] = "请再次输入新密码",
    ["inputPlayerID"] = "请输入账号",
    ["getChecKCode"] = "获取验证码",
    ["leaveSec"] = "剩余",
    ["registerNow"] = "立即注册",
    ["checkNow"] = "提交验证",
    ["bandingNow"] = "立即绑定",
    ["bandingSuccess"] = "绑定成功",
    ["errorPhoneNum"] = "手机号输入不正确",
    ["noEmptyCode"] = "验证码不能为空",
    ["noEmptyPassword"] = "密码不能为空",
    ["InputDiffPassword"] = "两次密码输入不一致",
    ["errorLengthPassword"] = "密码长度过短或过长",
    ["noPlayerRealName"] = "请输入真实姓名",
    ["noPlayerRealId"] = "请输入身份证号",
    ["touristSignUp"] = "我知道了(%ds)",
    ["heroTrainEnough"] = "所有属性值已满",
    ["nowScore"] = "当前积分:",
    ["nowRank"] = "当前排名:",
    ["fightTime"] = "战斗时限:",
    ["haveNoNum"] = "次数不足",
    ["mapLevel"] = "当前关卡：",
    ["buy"] = "购买",
    ["goto"] = "进入",
    ["win"] = "胜利",
    ["lose"] = "失败",
    ["attackPvpScoreInfo"] = "每周六22:00重置积分，在重置前达到对应积分可领取奖励",
    ["attackPvpInfo"]="每周六22：00进行结算，根据排名发放奖励，详细奖励规则如下：",
    ["newPvpShopTime"] = "下次刷新时间每周六%02d:%02d:%02d",
    ["attackPvpRule"] = "1.系统开启后首周为单服匹配，之后为跨服匹配。\n2.点击匹配后，系统自动给玩家匹配积分相近玩家。\n3.匹配成功后玩家可选择挑战或认怂，均会消耗该次次数。\n4.每次进攻根据攻破据点数结算积分，攻破据点数越多获得积分越多；积分200以上时，一个据点都未攻破将失去积分。\n5.防守得分与自身积分和防守星级有关，积分越高、星级越低、得分越少/扣分越多。其中积分200+获得0星、400+获得1星、600+获得2星都将扣分。任意积分防守3星都将得分。\n6.玩家需配置防守阵容，根据剩余水晶据点数多少判定玩家防守胜利的星级。\n7.每日可免费挑战5次，可购买更多次数进行挑战。\n8.每周六20:00-24:00期间不能进攻，22：00结算，重置排名与积分，根据积分及排名发放奖励。\n9.攻破第一个据点后防守方攻击小幅提高，攻破第二个据点后防守方攻击大幅提高。\n",
    ["attackPveActViewRule"] = "活动说明:\n1.玩家将率领自己的英雄，进行远征，为即将到来的战斗做准备。\n2.玩家每天可以进行3次远征并获得一定奖励。\n3.每天训练营都会更换防守的阵容，一周内关卡难度将逐渐提升，提供不一样的挑战。\n4.远征于每周日23点结算并根据排名发放奖励，每周日22:30-24:00期间不能进行挑战。\n\n规则\n1.拖动指定英雄或者士兵至地图任意位置即可将其指派上场，在规定时间内，攻破敌方领主，获取胜利。\n2.地图中设置有若干水晶据点，攻破后可获得积分与能量，并将出兵点前置。\n3.英雄在场上时使用该英雄技能卡将触发该英雄主动技能。\n4.士兵与英雄需要一定的能量提供才可以上场。\n5.右侧圆形能量球会随着时间恢复能量，攻破据点后也能提供一定的能量。\n6.士兵可以通过士兵训练进行强化。\n7.攻破第一个据点后防守方攻击小幅提高，攻破第二个据点后防守方攻击大幅提高。\n",
    ["buyAttackPveAct"] = "是否购买战斗次数",
    ["qianDaoDiJiTian"] = "签到%d天",
    ["yiDengLuDiJiTian"] = "已登陆%d天",
    ["nengLiJieSuo"] = "能力解锁",
    ["shengJie"] = "升阶",
    ["zuiGaoJi"] = "已达到最高级",
    ["dengJiXuYao"] = "需要英雄等级达到%d级",
    ["xingJiXuYao"] = "需要英雄星级达到%d星",
    ["tuPoXuYao"] = "需要英雄天赋突破达到%d阶段",
    ["tianFuXuYao"] = "需要学习%s天赋",
    ["xunLianShuXingXuYao"] = "英雄的%s训练属性达到%d",
    ["yesToExitAttackPve"] = "是否放弃战斗?",
    ["noResultAttackPve"] = "是否结束本次战斗",
    ["yesResultAttackPve"] = "是否结算本次战斗",
    ["restartResultAttackPve"] = "是否重新挑战",
    ["noScoreAndNum"] = "(不计算积分且不扣除挑战次数)",
    ["hasScoreAndNum"] = "(计算积分,扣除挑战次数并获得奖励)",
    ["peiZhiChengGong"] = "配置成功",
    ["hurt"] = "攻击",
    ["cost"] = "法耗",
    ["shuLiang"] = "数量",
    ["shiYongZhong"] = "使用中",
    ["shiYong"] = "使用",
    ["task"] = "任务",
    ["gotoView"] = "前往",
    ["consortiaActRule"] = "1.在规定的活动时间内，每日完成制定的个人目标后可领取对应的档次的奖励。\n2.奖励中的荣耀奖章只能用于本活动的捐献，在其他地方没有实际作用。（活动结束后将被清除）\n3.公会的对应积分需要全体公会成员捐献勋章获取。到达指定积分后可开启对应的积分宝箱，已开启的宝箱奖励将在活动结束后邮件发放。\n4.活动时间分为开始时间和结算时间两种，结算时间内只展示积分，奖励，排名。\n5.个人目标每日都会刷新，可以每日完成,完成后可以领取奖励。公会目标活动中只能完成一次。\n6.左下角显示对应的公会捐献排行，排名前十的公会将有额外的奖励提供。（详见奖励内容）\n7.当公会没有达到最低的1000积分要求时，将不会录入到排行榜内，也不会获得对应的奖励。\n8.活动期间内中途更换公会将清除玩家所有的勋章。\n9.排行榜实时刷新。结算时间截止后将不再刷新。\n10.排行奖励在活动截止后将通过邮件进行发送。\n",
    ["consortiaActReward"] = "活动结束后发放奖励",
    ["noEnoughMedal"] = "没有足够资源捐献",
    ["jueXing"] = "觉醒",
    ["jueXingJiNeng"] = "觉醒技能",
    ["consortiaTradeRule"] = "公会贸易说明：\n1.公会内每人可以派出一名伙伴来组成商队，商队队员组齐后出发，每人都会获得奖励\n2.队伍必须由同种族伙伴组成，元素和中立种族可以加入任意种族队伍\n3.队伍伙伴有突破品质限制，不满足条件的只会获得部分奖励\n4.商队每天前往的城市不同，派出城市对应种族会获得额外奖励加成\n5.根据公会所有玩家获得的总奖励进行排行，每周二零点结算\n6.每人每天可以参加商队次数无限制，但只有前两次能获取奖励",
    ["consortiaTradeLevelLimit"] = "%d级商队开启",
    ["consortiaTradeRace"] = "今日商队目的地：%s，所有%s贸易商队，能获得额外奖励",
    ["partnerQuality_0"] = "白色品质伙伴",
    ["partnerQuality_1"] = "绿色品质伙伴",
    ["partnerQuality_2"] = "蓝色品质伙伴",
    ["partnerQuality_3"] = "紫色品质伙伴",
    ["partnerQuality_4"] = "橙色品质伙伴",
    ["partnerQuality_5"] = "金色品质伙伴",
    ["playerBandWeChat"] = "玩家已绑定微信号",
    ["partnerQualityReward"] = "及以上可获得全额奖励",
    ["consortiaTradeHasTeam"] = "您已经加入队伍",
    ["notConsortiaTradeRace"] = "所选将种族不符合需求",
    ["consortiaTradeSameHero"] = "已上阵相同将",
    ["attackPvpFail"] = "认怂将扣取次数,是否确定",
    ["shuXing"] = "属性",
    ["taFang"] = "塔防",
    ["duiZhan"] = "对战",
    ["fanTui"] = "反推",
    ["noBuild"] = "未建造",
    ["beComplete"] = "已完成",
    ["zhiFuShiBai"] = "支付失败",
    ["zhiFuQuXiao"] = "支付取消",
    ["zhiFuZhengMang"] = "支付正忙",
    ["dengLuShiBai"] = "登录失败",
    ["zhiFuYanZhengZhong"] = "支付验证中，请稍后..",
    ["guildRiskRule"] = "公会探险说明:\n1.每个阵营都可以组成一支队伍进行公会探险，每支队伍至少3个英雄才能出发进行探险。\n2.<div fontcolor=#ff0000>每日探险基础总次数为10次，总次数随公会探险的等级提高而增加。</div>\n3.每支队伍的每日探险次数与队伍人数有关，3人即3次，5人为5次。\n4.<div fontcolor=#ff0000>由于野外的特殊封印，装备在探险中无法生效，探险队伍的所有战斗与战斗力显示均不计算装备属性。</div>\n5.探险队伍会根据遇到的不同事件进入冷却时间，冷却时间可以使用钻石进行重置。\n5. 个人探险获取的稀有资源（木材、矿石等）会直接进入公会仓库，并获取相应的公会贡献。\n6. 一些稀有的探险事件，只有特定阵营的队伍，或是队伍战斗力达到一定值才会遇见哦。",
    ["guildRiskTeamDes"] = "%s队伍:%d/5",
    ["lengQueZhong"] = "冷却中",
    ["shangWeiBianDui"] = "未编队",
    ["kongXian"] = "空闲中",
    ["tanXianZhong"] = "探险中",
    ["attackPartnerNumNeed5"] = "进攻队伍最少需5人",
    ["numberQi"] = "第%s期",
    ["discountStr"] = "%d折",
    ["zuiGaoDengJi"] = "最高等级",
    ["xiaYiDengJi"] = "下一等级",
    ["oldPrice"] = "原价",
    ["curPrice"] = "现价",
    ["ipay"] = "微信/支付宝(推荐)",
    ["jspay"] = "贝宝收银台",
    ["normalTrain"] = "普通\n训练",
    ["seniorTrain"] = "高级\n训练",
    ["keep"] = "保存",
    ["keepSuccess"] = "保存成功",
    ["set"] = "设置",
    ["partnerTrainRule"] = "锁定需要优先保存的属性，该属性提升时便会自动保存。\n不锁定任何属性时，只要有属性提升便会自动保存。",
    ["trainScore"] = "训练评分：",
    ["loadResult"] = "正在结算，目前不能挑战",
    ["jieSuoTiaoJian"] = "需要公会商店达到%d级解锁",
    ["gonghuiShangDianDengJiBuZu"] = "公会商店等级不足",
    ["gonghuiGongXianZhiBuZu"] = "公会贡献值不足",
    ["gongXianZhi"] = "公会贡献值",
    ["purchasePackageRule"] = "1.充值后可获得对应价值的礼包，相应的VIP经验，可以获得首充礼包。\n2.充值现金礼包不参与其他的任何充值有关的活动，也不会获得充值钻石。\n3.礼包每日0点都会随机刷新，每个玩家看到的礼包可能会有不同。\n4.礼包全部购买完毕后对应入口就会关闭。\n5.购买后道具将直接加入背包，不会有对应的宝箱。",
    ["houShuaXin"] = "后刷新",
    ["shouQuanShiBai"] = "授权失败",
    ["xilianAllLocked"] = "所有属性都已锁定，请请解锁再洗练",
    ["xilianAllFull"] = "当前属性已满，要洗练吗？",
    ["activePrivateSkill"] = "获得新技能",
    ["privateSkillFrom"] = "通过专属装备激活技能",
    ["hasMaxLevel"] = "已达最高等级",
    ["buyPowerStr"] = "购买%s体力需要花费",
    ["moneyNotEnough"] = "钻石不够，前去充值？",
    ["needBeforeMap"] = "未打通前置关卡！",
    ["editPassSuccess"] = "密码修改成功",
    ["noConsortia"] = "无公会",
    ["dayStr"] = "天",
    ["hourStr"] = "时",
    ["minStr"] = "分",
    ["secStr"] = "秒",
    -- 七日登入
    ["loginGiftDay1Name"] = "通关普通副本1-4-6自动获取",
    ["loginGiftDay1Des"] = "S品阶黑龙女王",
    ["impeachmentInfo"] = "由于会长长时间未出现，现已启动会长\n弹劾机制。公会成员将分批获得弹劾权限：第一批为公会副会长；第二批为发放权限时，7日贡献前5的普通成员；第三批为全体成员。发起弹劾需要支付500钻石，支付完成即为弹劾成功，自动提升为会长，带领公会继续壮大。",
    ["impeachmentConsume"] = "弹劾会长需要消耗钻石",
    ["impeachmentSuccess"] = "弹劾成功",
    ["abyssHelpNum"] = "累计出战%d次",
    ["abyssHelpPlace"] = "提升公会技能可解锁更多支援位置",
    ["abyssRule"] = "系统说明:\n1.深渊中只有已经觉醒的英雄可以上阵或作为支援。\n2.支援列表中的待选英雄为公会中其他成员的支援英雄。\n3.关卡胜利后不可重复挑战，次日重置。\n4.关卡挑战后不论胜负，我方英雄保存血量。\n5.英雄死亡后不可上阵，可使用钻石购买血瓶治疗英雄，支援英雄不可治疗。\n6.深渊中的环境会发生变化，利用环境可降低难度。\n7.玩家的支援英雄成功助战后可获得奖励，每日所获奖励有上限值。",
    ["abyssTreatBlood"] = "治疗英雄%d%%血量需要花费",
    ["abyssTreatSuccess"] = "治疗成功",
    ["abyssBloodEnough"] = "该英雄血量已满",
    ["abyssHelpHeroTreat"] = "支援英雄无法治疗",
    ["abyssOpenNeed"] = "玩家等级未达到%d级或无觉醒将",
    ["youKeyChongZhi"] = "请到用户中心绑定正式账号",
    ["dingDanChuLiZhong"] = "您有一笔订单在其他区服还在处理中哦。。",
    ["zhengZaiGouMaiWuPin"] = "正在购买物品，请稍后。。",
    ["meiYouDangQianWuPin"] = "交易失败，没有当前物品。。",
    ["shangPinLieBiaoKong"] = "商品列表是空的",
    ["templeRule"] = "遗忘秘殿规则：\n1.每次挑战都会消耗一点能量，挑战必定获得专属精华。\n2.只有拥有成品专属的伙伴，才会出现在挑战目标中。\n3.挑战胜利有几率抢夺到该伙伴专属碎片，同时小概率获得升阶精华。\n4.可以在对抢走自己碎片的玩家进行复仇，复仇成功必定能夺回专属碎片。\n5.可以通过购买各种buff增强自己，从而击败更强的对手。",
    ["templeBuffLimit"] = "超出层数上限",
    ["templeSelectHero"] = "请把需要抢夺的英雄放置中间",
    ["templeNoRevenge"] = "还没有人敢于向你挑战",
    ["templeNoReport"] = "直接获胜，无战报",
    ["templeNoEnery"] = "无法挑战",
    ["endlessOpenLevel"] = "无尽炼狱%d级开启",
    ["yesToExchange"] = "是否确认兑换",
    ["actLimitBuyDes1"] = "活动期间每天累计充值满%d钻石可获得购买商城道具次数",
    ["actLimitBuyDes2"] = "已充值钻石数:%d",
    ["actLimitBuyDes3"] = "次数:%d/%d",
    ["noEnoughItem"] = "道具不足",
    ["playerProveRule"] = "根据《网络游戏管理暂行办法》规定，未完成实名认证将会影响正常游戏。您的个人信息绝不会向第三方透露，请放心填写。",
    ["playerCorrectInfo"] = "请填写正确的姓名或者身份证号",
    ["playerProveSuccess"] = "实名认证成功",
    ["playerDiamondLack"] = "未达到充值要求，前往充值",
    ["endlessRule"] = "1. 玩家达到50级可以解锁主线关卡的炼狱模式。\n2. 炼狱关卡会随玩家等级提高逐步解锁，目前暂时开放5个关卡，玩家达到65级可以解锁全部关卡。\n3. 在炼狱关卡战斗中，怪物的攻击力、血量会持续增长。\n4. 在炼狱关卡战斗中，上阵英雄的血量越高，则领主血量越高。\n5. 炼狱关卡的评分与所有英雄造成的总伤害及单位时间内的伤害有关。\n6. 每个炼狱关卡首次达到一定评分都可以获得一次性奖励。\n7. 每日00：30分会根据所有玩家炼狱关卡的总评分发放评分奖励。",
    ["SanctuaryTimeDown"] = "本赛季剩余倒计时:", 
    ["fightNum"] = "战斗力",
    ["buyNumLimit"] = "达到购买上限",
    ["toBuyChanllageNum"] = "是否购买挑战次数",
    ["sanctuaryResultTime"] = "距离第%d次结算:",
    ["sanctuaryResultTime1"] = "距离最终结算:",
    ["sanctuaryOpen"] = "开服20天且玩家等级达到50级",
    ["sanctuaryLocalRule"] = "周五0:30-1:00为结算时间，无法挑战，0:40按排名发放如下奖励：",
    ["sanctuaryServerRule"] = "赛季结算当天0:50按排名发放如下奖励，并重置所有积分为1000",
    ["actWelfareTitle"] = "每月福利",
    ["actWelfareLastDay"] = "剩余可领取%d天",
    ["actWelfareNum"] = "累充%d钻激活",
    ["actWelfareRechrage"] = "现已累充：",
    ["noEnoughCoin"] = "硬币不足",
    ["nowYouDo"] = "我取%d个,该你了",
    ["gameToWin"] = "很高兴,你赢了",
    ["gameToLose"] = "很遗憾,你输了",
    ["cannotInAgain"] = "退出后无法重进",
    ["litteGameName1"] = "猜硬币",
    ["litteGameName2"] = "取硬币",
    ["litteGameRule1"] = "猜对硬币所在的杯子即为胜利",
    ["litteGameRule2"] = "轮流取1-3枚硬币,取到最后一枚者取胜",
    ["lastCoinNum"] = "剩余%d枚",
    ["skillCloseed"] = "封印状态下无法使用技能",
    ["luckyCaseRule"] = "1、幸运宝箱品阶有6个品质，从低到高，白-绿-蓝-紫-橙-龙形。\n2、活动期间每天有一定数量的免费开启宝箱次数，当日免费次数未使用不保留至第二天，免费次数使用完毕需要使用钻石开启。\n3、用户随机获得1个品阶宝箱，如对当前品阶不满意，可刷新宝箱品阶。\n4、如对当前品阶宝箱内9个展示道具不满意，可刷新道具。\n5、开启宝箱时光标随机转动，最后获得光标停留后的道具。\n6、每次开启可获得一定积分，可使用积分在积分商城内兑换道具，积分仅限本次活动兑换，不保留至下次活动。",
    ["luckyOpenNum"] = "免费开启*%d",
    ["luckyOpen"] = "开启宝箱",
    ["lastScore"] = "剩余积分:%d",
    ["openEffect"] = "开启动画",
    ["closeEffect"] = "关闭动画",
    ["runNoticeDes"] = "%s玩家在%s获得了%s!",
    ["buyRefreshTime"] = "是否购买刷新次数",
    ["buyOpenTime"] = "是否购买开启次数",
    ["mazeAnswerWrong"] = "回答错误...",
    ["mazeGetMice"]     = "获取免费骰子..",
    ["mazeStepUp"]      = "踩了香蕉皮前进%d步...",  
    ["mazeUnOpen"]      = "施工中，敬请期待..." ,
    ["mazeMiceLack"]   = "骰子数量不够哦..",
    ["mazeBusy"]        = "正在执行中..",
    ["mazeBuySuccess"]  = "购买成功",
    ["mazeToolLuck"]  = "道具不足,前去购买?",
    ["mazeUseZuanShi"]  = "是否使用钻石购买?",
	["mazeEnterRankDec"]  = "您已进入排行榜点击查看",
	["mazeRankNeedDec"]  = "进入跨服排行需要%d圈%d步",
    ["mazeStep"]  = "%d圈%d步",
    ["attackPve"] = "进攻",
    ["defensePve"] = "防御",
    ["attackPvpOpen"] = "领地争夺需要开服%d天开启",
    ["attackPveOpen"] = "远征需要开服%d天开启",
	["confirmExitGame"]  = "有新的更新资源，请关闭游戏进行更新",
    ["chatlevelLimite"]  = "聊天需要等级30级或vip1",
    ["attackPveDefenseNumError"]  = "上阵将数量超出或不足",
    ["allBody"] = "全部部位",
    ["equipHasWear"] = "已穿戴",
    ["equipNoWear"] = "未穿戴",
    ["equipResonance"] = "装备共鸣",
    ["equipStrong"] = "装备强化",
    ["equipStar"] = "装备升星",
    ["magicLevel"] = "级",
    ["equipNoResonance"] = "尚未共鸣",
    ["equipCanNotResonance"] = "该装备无法共鸣",
    ["equipCanNotResonance1"] = "无法共鸣",
    ["equipMaxResonanceLevel"] = "该装备已达到最大共鸣等级",
    ["equipNoStarResonance"] = "装备达到%d星可继续共鸣",
    ["equipResonanceRule"] = "1.蓝色品质以上的装备开启装备共鸣。\n2.蓝色装备可以共鸣两阶，紫色三阶，橙色四阶。\n3.每一阶共鸣分为两级，全部激活之后可以进入下一阶。\n4.共鸣属性可以受到护甲精通/武器精通的加成。\n5.兑换装备可以返还部分共鸣消耗的材料。",
    ["openLevelNeed"] = "需要达到%d等级",
    ["equipAttrType1"] = "<div fontcolor=#491B10>基本简述</div>",
    ["equipAttrType2"] = "<div fontcolor=#491B10>基础属性</div>",
    ["equipAttrType3"] = "<div fontcolor=#491B10>羁绊属性</div>",
    ["equipAttrType4"] = "<div fontcolor=#38660C>套装属性</div>",
    ["equipAttrType5"] = "<div fontcolor=#FFBB41>共鸣属性</div>",
    ["gotoRankScore"] = "距离进入排行榜还差%d分",
    ["socreInRankList"] = "已进入排名,可查看排行榜查询",
    ["attackPvpNoDefense"] = "暂时无法防守配置",
    ["lastTimeToEndAct"] = "活动倒计时:%s",
    ["actHasEndTime"] = "活动已结束",
    ["actRechargeRewards"] = "累计充值满%d钻即可领取30天奖励",
    ["illusoryReward"] = "雇佣该守护需扣除%s%%BOSS奖励",
    ["illusoryDiff"] = "难度:",
    ["levelEnoughOpen"] = "等级达到%d开启",
    ["illusoryGuardNumMax"] = "守护者数量超出上限",
    ["illusoryReset"] = "挑战次数还未用尽,\n确定要重置副本吗",
    ["illusoryRule"] = "1. 每天24：00获得一次免费重置次数。\n2. 每次重置副本时选择本次副本挑战难度，只可选择已解锁难度，挑战过程中难度不可变更。\n3. 不选择任何守护者击杀当前难度关底boss时可解锁下一级难度。\n4. 每次副本挑战次数为10次，挑战次数用尽后本次副本无法继续挑战。\n5. 必须按次序依次完成关卡。\n6. 在boss关卡可选择是否需要守护者协助完成挑战，选择需要守护者协助会降低关卡奖励。",
    ["nightmareReward"] = "通关该难度可领取奖励",
    ["nightmareDiffSelect"] = "难度选择后今日无法修改",
    ["nightmareNoSelect"] = "今日已修改难度",
    ["currentDiff"] = "当前难度：",
    ["diffDes1"] = "简单",
    ["diffDes2"] = "普通",
    ["diffDes3"] = "困难",
    ["diffDes4"] = "噩梦",
    ["nightmareRule"] = "噩梦峡谷规则",
}

return localWords