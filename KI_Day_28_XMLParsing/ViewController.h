//
//  ViewController.h
//  KI_Day_28_XMLParsing
//
//  Created by Student P_02 on 10/04/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#define URL "http://www.w3schools.com/xml/plant_catalog.xml";

@interface ViewController : UIViewController<NSXMLParserDelegate>
@property NSMutableString *charString;
@property NSMutableArray *plantArray;
@property NSXMLParser *saxparser;


@end

