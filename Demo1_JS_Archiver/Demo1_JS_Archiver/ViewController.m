//
//  ViewController.m
//  Demo1_JS_Archiver
//
//  Created by  江苏 on 16/3/12.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //归档
//    NSArray* names=@[@"高富帅",@"李志杰",@"我",@"小纸箱"];//准备归档对象
//    NSMutableData* data=[NSMutableData data];//创建可变数组
//    NSKeyedArchiver* arch=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];//创建归档对象
//    [arch encodeObject:names forKey:@"names"];//把对象编码进去
//    [arch finishEncoding];//完成编码
//    [data writeToFile:@"/Users/jiangsu/Desktop/name/names" atomically:YES];//保存data
//    NSLog(@"%lu",(unsigned long)data.length);
    //反归档
    NSData* data=[NSData dataWithContentsOfFile:@"/Users/jiangsu/Desktop/name/names"];//拿到data
    NSKeyedUnarchiver* unArch=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];//创建反归档对象
    NSArray* names=[unArch decodeObjectForKey:@"names"];//解码
    for (NSString* name in names ) {
        NSLog(@"%@",name);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
