//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  neteasemusicJailBreakDylib.m
//  neteasemusicJailBreakDylib
//
//  Created by mac on 2018/2/7.
//  Copyright (c) 2018年 com.jailbreak. All rights reserved.
//

#import "neteasemusicJailBreakDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>

static __attribute__((constructor)) void entry(){
    NSLog(@"\n               🎉!!！congratulations!!！🎉\n👍----------------insert dylib success----------------👍");
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
#ifndef __OPTIMIZE__
        CYListenServer(6666);
#endif
        
    }];
}

CHDeclareClass(XMAdSoundPatchReminder)

CHOptimizedMethod(0, self, _Bool, XMAdSoundPatchReminder,isVip){
    return YES;
}

CHConstructor{
    CHLoadLateClass(XMAdSoundPatchReminder);
    CHHook(0,XMAdSoundPatchReminder, isVip);
}

//CHDeclareClass(XMPlayingViewController)
//
//CHOptimizedMethod(1, self, void, XMPlayingViewController,onPlayButtonPressed,id,arg1){
//    CHSuper(1, XMPlayingViewController, onPlayButtonPressed,arg1);
//    return;
//}
//
//CHConstructor{
//    CHLoadLateClass(XMPlayingViewController);
//    CHHook(1,XMPlayingViewController, onPlayButtonPressed);
//}

//CHDeclareClass(XMAdManager)
//
//CHOptimizedMethod(0, self, id, XMAdManager,getCurrentAdAudioItem){
//    id value = CHSuper(0, XMAdManager, getCurrentAdAudioItem);
//    NSLog(@"value is:%@",value);
//    return nil;
//}
//
//CHOptimizedMethod(1, self, id, XMAdManager,getCurrentAdAudioItem,long long, arg1){
//    id value = CHSuper(1, XMAdManager, getCurrentAdAudioItem,arg1);
//    NSLog(@"value is:%@",value);
//    return nil;
//}
//
//CHOptimizedMethod(1, self, id, XMAdManager,getAdItemDataWithType,long long, arg1){
//    id value = CHSuper(1, XMAdManager, getAdItemDataWithType,arg1);
//    NSLog(@"value is:%@",value);
//    return nil;
//}
//
//CHOptimizedMethod(1, self, _Bool, XMAdManager,isShowAd,long long, arg1){
//    BOOL value = CHSuper(1, XMAdManager, isShowAd,arg1);
//    NSLog(@"value is:%d",value);
//    return NO;
//}
//
//CHOptimizedMethod(1, self, id, XMAdManager,getAdLocalDataWithType,long long, arg1){
//    id value = CHSuper(1, XMAdManager, getAdLocalDataWithType,arg1);
//    NSLog(@"value is:%@",value);
//    return nil;
//}
//CHConstructor{
//    CHLoadLateClass(XMAdManager);
//    CHHook(0,XMAdManager, getCurrentAdAudioItem);
//    CHHook(1,XMAdManager, getCurrentAdAudioItem);
//    CHHook(1,XMAdManager, getAdItemDataWithType);
//    CHHook(1,XMAdManager, isShowAd);
//    CHHook(1,XMAdManager, getAdLocalDataWithType);
//}


CHDeclareClass(XMLaunchViewModel)

CHOptimizedClassMethod(1, self, id, XMLaunchViewModel,firstMatchedAdWithAdItems,id,arg1){
    //get origin value
//    id originName = CHSuper(1, XMLaunchViewModel, firstMatchedAdWithAdItems,arg1);
//
//    NSLog(@"origin name is:%@",originName);

    return nil;
    
}

CHOptimizedClassMethod(0, self, double, XMLaunchViewModel,GDTFetchDelay){
    //get origin value
//    double value = CHSuper(0, XMLaunchViewModel, GDTFetchDelay);
//    NSLog(@"value is:%f",value);
    return 0;

}

CHConstructor{
    CHLoadLateClass(XMLaunchViewModel);
    CHClassHook(1,XMLaunchViewModel, firstMatchedAdWithAdItems);
    CHClassHook(0,XMLaunchViewModel, GDTFetchDelay);
}


//CHOptimizedClassMethod(0, self, double, XMLaunchViewModel,GDTFetchDelay){
//    //get origin value
//    double originName = CHSuper(0, XMLaunchViewModel, GDTFetchDelay);
//
//    NSLog(@"origin name is:%f",originName);
//
//    //get property
//    NSString* password = CHIvar(self,_password,__strong NSString*);
//
//    NSLog(@"password is %@",password);
//
//    //change the value
//    return 0;
//
//}

