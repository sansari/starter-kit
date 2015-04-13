//
//  HomeController.m
//  starter-kit
//
//  Created by Salman Ansari on 4/12/15.
//  Copyright (c) 2015 daretodream. All rights reserved.
//

#import "HomeController.h"
#import "Masonry.h"

@implementation HomeController

-(void)viewDidLoad {
	UIView *titleBar = UIView.new;
	[titleBar setBackgroundColor:[UIColor colorWithRed:0.93 green:0.78 blue:0.64 alpha:1]];
	[self.view addSubview:titleBar];
	[titleBar makeConstraints:^(MASConstraintMaker *make) {
		make.height.equalTo(@100);
		make.left.equalTo(self.view.left);
		make.right.equalTo(self.view.right);
	}];
}

@end
