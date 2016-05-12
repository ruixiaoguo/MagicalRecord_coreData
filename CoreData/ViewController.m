//
//  ViewController.m
//  CoreData
//
//  Created by grx on 16/5/12.
//  Copyright © 2016年 grx. All rights reserved.
//

#import "ViewController.h"
#import "Persion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*! 添加记录 */
    [self addPersion];
    /*! 查找记录 */
    [self findAll];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)addPersion
{
    Persion *person = [Persion MR_createEntity];
    person.firstname = @"Frank";
    person.lastname = @"Zhang";
    person.age = @25;//此处使用了LLVM的新特性，XCode 4.4可用
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}

-(void)findAll
{
    //查找数据库中的所有Person。
    NSArray *persons = [Persion MR_findAll];
    NSLog(@"据库中的所有Person====%@",persons);
    //查找所有的Person并按照first name排序。
    NSArray *personsSorted = [Persion MR_findAllSortedBy:@"firstname" ascending:YES];
    NSLog(@"所有的Person并按照first name排序====%@",personsSorted);
    //查找所有age属性为25的Person记录。
    NSArray *personsAgeEuqals25   = [Persion MR_findByAttribute:@"age" withValue:[NSNumber numberWithInt:25]];
    NSLog(@"age属性为25的Person记录====%@",personsAgeEuqals25);

    //查找数据库中的第一条记录
    Persion *person = [Persion MR_findFirst];
    NSLog(@"查找数据库中的第一条记录====%@",person);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
