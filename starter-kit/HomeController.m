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
	NSMutableDictionary *tileMap = NSMutableDictionary.new;
	
	UIView *topLeftWrapper = [self generateTile:@"O"];
	[self.view addSubview:topLeftWrapper];
	tileMap[@"topLeft"] = topLeftWrapper;
	
	UIView *topMiddleWrapper = [self generateTile:@"X"];
	[self.view addSubview:topMiddleWrapper];
	tileMap[@"topMiddle"] = topMiddleWrapper;

	UIView *topRightWrapper = [self generateTile:@"O"];
	[self.view addSubview:topRightWrapper];
	tileMap[@"topRight"] = topRightWrapper;
	
	[topLeftWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.top.equalTo(self.view.top);
		make.left.equalTo(self.view.left);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	[topMiddleWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.top.equalTo(self.view.top);
		make.centerX.equalTo(self.view.centerX);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];

	[topRightWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.top.equalTo(self.view.top);
		make.right.equalTo(self.view.right);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	UIView *middleLeftWrapper = [self generateTile:@"X"];
	[self.view addSubview:middleLeftWrapper];
	tileMap[@"middleLeft"] = middleLeftWrapper;
	
	UIView *middleMiddleWrapper = [self generateTile:@"O"];
	[self.view addSubview:middleMiddleWrapper];
	tileMap[@"topMiddle"] = middleMiddleWrapper;
	
	UIView *middleRightWrapper = [self generateTile:@"X"];
	[self.view addSubview:middleRightWrapper];
	tileMap[@"topRight"] = middleRightWrapper;
	
	[middleLeftWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.centerY.equalTo(self.view.centerY);
		make.left.equalTo(self.view.left);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	[middleMiddleWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.centerY.equalTo(self.view.centerY);
		make.centerX.equalTo(self.view.centerX);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	[middleRightWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.centerY.equalTo(self.view.centerY);
		make.right.equalTo(self.view.right);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	UIView *bottomLeftWrapper = [self generateTile:@"X"];
	[self.view addSubview:bottomLeftWrapper];
	tileMap[@"bottomLeft"] = bottomLeftWrapper;
	
	UIView *bottomMiddleWrapper = [self generateTile:@"O"];
	[self.view addSubview:bottomMiddleWrapper];
	tileMap[@"bottomMiddle"] = bottomMiddleWrapper;
	
	UIView *bottomRightWrapper = [self generateTile:@"X"];
	[self.view addSubview:bottomRightWrapper];
	tileMap[@"topRight"] = bottomRightWrapper;
	
	[bottomLeftWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.bottom.equalTo(self.view.bottom);
		make.left.equalTo(self.view.left);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	[bottomMiddleWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.bottom.equalTo(self.view.bottom);
		make.centerX.equalTo(self.view.centerX);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
	
	[bottomRightWrapper makeConstraints:^(MASConstraintMaker *make) {
		make.bottom.equalTo(self.view.bottom);
		make.right.equalTo(self.view.right);
		make.width.equalTo(@125);
		make.height.equalTo(@200);
	}];
}

-(UIView*)generateTile:(NSString*)letter {
	UIView *tile = UIView.new;
	tile.backgroundColor = [UIColor colorWithRed:1 green:0.63 blue:0.75 alpha:1];
	UILabel *tileLabel = UILabel.new;
	tileLabel.text = letter;
	tileLabel.font = [UIFont fontWithName:@"Chalkduster" size:80.0];
	[tile addSubview:tileLabel];
	[tileLabel makeConstraints:^(MASConstraintMaker *make) {
		make.center.equalTo(tile);
	}];
	
	return tile;
}

@end
