//
//  ViewController.m
//  testDemo
//
//  Created by 余强 on 16/9/22.
//  Copyright © 2016年 余强. All rights reserved.
//

#import "ViewController.h"
#import "RSADataSigner.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *privateKey = @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALB3n/tSedFFSi4bkJZ7SrOeT+UStx0YlD+JD744g6KI9tyuU+AoIfVG1UN+2oFPaRn+SkBiM5jzVTRbIxzSpjPANaiBvEDf1hZRtRroUuZBEMI7PzR/cLJEpuM/WcUtnHPLOdQSHCjipkYa4iMidB6sm4zvZ9MZdUyJloj02s+RAgMBAAECgYEAmLGqGMmw5sfR/DuVzOA6L1oZP9oF4INYI/HxUWONY6KoGSQvJ5MSby4vcwvc/m88PmWu0i8m/n3viDIkG9iaPlWKweRpcjY7voLGvRg773Rs/imtsRhsToDoGVeyStoUfjKD+1kd8yj5OfnERFlsYDQqmzbw4Ymn5v8bG+kWiQECQQDUmgmj5rT+ufmDuwbc/LYAkCuAzrotwdtUPEv13NLeRAfwG/fy6Ppm0J6Eidjj1qfatHKbZowVyQ8YAiIohdHJAkEA1H1OAlloan/3d/IY9eXazXl7BCHhIOKv8puNclqJH7HgYomU/R6mJ7QN9ZZvINXLwnNyqHWHZUjime2zLh6ziQJBAMNWUJs2Y4BT8ayWT+UFkFgOHtp3ltpp7pKD4CsjXN/5U+3KVNPsOf3zmmIeoZgdZxZsi4y6+OUfWe3uL+JZqfkCQFLDM30qwcapbQPk4d/01RIu/MERSRR79rfx6lfd94bGy3TVzZgBNgpE0SMUotgRLbnhKYl/rWq/xrLZqG6QOrECQEdKTLUFD0IuPWCdYDEWa8i05i0ZFxvvLwOI6Jre/DR3YPm8WdGBFiV5qKWOp+0fc3F2VewCxl085O90n2+7mzk=";;
    id<DataSigner> signer = CreateRSADataSigner(privateKey);
    NSString *signedString = [signer signString:@"hello"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
