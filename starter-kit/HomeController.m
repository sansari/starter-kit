//
//  HomeController.m
//  starter-kit
//
//  Created by Salman Ansari on 4/12/15.
//  Copyright (c) 2015 daretodream. All rights reserved.
//

#import "HomeController.h"
#import "Masonry.h"
#import <QuartzCore/QuartzCore.h>

@implementation HomeController

-(void)viewDidLoad {
	self.layerView = UIView.new;
	[self.layerView setBackgroundColor:[UIColor whiteColor]];
	[self.view addSubview:self.layerView];
	[self.layerView makeConstraints:^(MASConstraintMaker *make) {
		make.height.equalTo(@200);
		make.width.equalTo(@200);
		make.center.equalTo(self.view);
	}];
	
	UIImage *image = [UIImage imageNamed:@"apple-background"];
	self.layerView.layer.contents = (__bridge id)(image.CGImage);
	self.layerView.layer.contentsGravity = kCAGravityResizeAspect;
	self.layerView.layer.contentsScale = image.scale;
	self.layerView.layer.masksToBounds = YES;
	self.layerView.layer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
	self.layerView.layer.contentsCenter = CGRectMake(0.25, 0.25, 0.5, 0.5);
	
	CALayer *blueLayer = [CALayer layer];
	blueLayer.frame = CGRectMake(50.0f, 50.f, 100.f, 100.f);
	blueLayer.backgroundColor = [UIColor blueColor].CGColor;
	blueLayer.delegate = self;
	blueLayer.contentsScale = [UIScreen mainScreen].scale;
	[self.layerView.layer addSublayer:blueLayer];
	[blueLayer display];
}

-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
	CGContextSetLineWidth(ctx, 20.0f);
	CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
	CGPoint points[6] = {
		CGPointMake(0, 0), CGPointMake(100, 100),
		CGPointMake(50, 50), CGPointMake(100, 0),
		CGPointMake(0,100), CGPointMake(50,50)
	};
	CGContextStrokeLineSegments(ctx, points, 6);
}

@end
