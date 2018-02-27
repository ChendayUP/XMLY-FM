# 喜马拉雅FM去广告
XMLaunceView启动页广告
XMLaunchViewModel控制广告数据的加载
- \+ (id)firstMatchedAdWithAdItems:(id)arg1;
根据广告类型获取第一个匹配的数据,返回nil即可去掉广告

音频播放界面
XMPlayingViewController
播放控件
XMNowPlayingPlaybar
点击播放调用XMNowPlayingPlaybarDelegate的onPlayButtonPressed方法
XMAdSoundPatchReminder为音频广告控件
有isVip属性来判断是否是vip,hook方法: - (_Bool)isVip 始终返回YES来去音频广告
