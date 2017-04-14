//
//  ViewController.m
//  KI_Day_28_XMLParsing
//
//  Created by Student P_02 on 10/04/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str=@ "http://www.w3schools.com/xml/plant_catalog.xml";
    self.plantArray=[[NSMutableArray alloc]init];
    NSURL *url=[NSURL URLWithString:str];
    self.saxparser=[[NSXMLParser alloc]initWithContentsOfURL:url];
    self.saxparser.delegate=self;
    [self.saxparser parse];
}
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:( NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    self.charString=[[NSMutableString alloc]init];
    
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [self.charString appendString:string];
    
}
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    [self.plantArray addObject:self.charString];
    NSLog(@"%@",self.plantArray);
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


@end
