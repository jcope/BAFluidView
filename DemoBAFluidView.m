//
//  DemoBAFluidView.m
//  iOS8
//
//  Created by Jeremy Cope on 7/15/15.
//  Copyright (c) 2015 Emma Technologies, L.L.C. All rights reserved.
//

#import "DemoBAFluidView.h"
#import "BAViewController.h"

@interface DemoBAFluidView ()
@property (strong) BAViewController* app;
@end

@implementation DemoBAFluidView

- (id)init{
    if (self = [super init]) {
        _app = [self createDemoApp];
    }
    return self;
}

-(BAViewController*)createDemoApp{
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    BAViewController* app = (BAViewController*)[sb instantiateViewControllerWithIdentifier:@"bafluidview-id"];
    return app;
}

#pragma mark - DemmoApp Delegate
-(NSString*)appName{
    return @"BA Fluid View";
}
-(NSString*)appDetail{
    return @"The view and it's layer create a 2D fluid animation that can be used to simulate a filling effect.";
}
-(UIImage*)appImage{
    return [UIImage imageNamed:@"BAFluidViewScreenShot.png"];
}
-(UIViewController*)mainViewController{
    return _app;
}
@end
