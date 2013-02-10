//
//  FirstViewController.m
//  SandB-iOS
//
//  Created by Lea Marolt on 1/25/13.
//  Copyright (c) 2013 Grinnell AppDev. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Scarlet & Black", @"Scarlet & Black");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad {
    [super loadArticles:@"http://www.thesandb.com/feed"];
    [super viewDidLoad];
<<<<<<< HEAD
    
    // Rename the back button on the child views
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:backButton];
    
    
    self.cellIdentifier = @"NewsCell";
    self.title = @"Scarlet and Black";
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
   // [self loadArticles];
    
    //Get the XML data
    NSData *xmlData = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:@"http://www.thesandb.com/feed"]];
    tbxml = [[TBXML alloc]initWithXMLData:xmlData];
    articleArray = [[NSMutableArray alloc] init];
    // Obtain root element
    TBXMLElement * root = tbxml.rootXMLElement;
    if (root)
    {
        TBXMLElement * elem_NEWroot = [TBXML childElementNamed:@"channel" parentElement:root];
        TBXMLElement * elem_ARTICLE = [TBXML childElementNamed:@"item" parentElement:elem_NEWroot];
        while (elem_ARTICLE !=nil)
        {
            TBXMLElement * elem_TITLE = [TBXML childElementNamed:@"title" parentElement:elem_ARTICLE];
            TBXMLElement * elem_TEXT = [TBXML childElementNamed:@"content:encoded" parentElement:elem_ARTICLE];
            Article * art = [[Article alloc] init];
            NSString *articleTitle = [TBXML textForElement:elem_TITLE];
            NSString *articleBody = [TBXML textForElement:elem_TEXT];
            
            // TODO - Refactor this!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"<p>" withString:@"\n"];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"</p>" withString:@""];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"<br />" withString:@""];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"<em>" withString:@""];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#8230" withString:@"... "];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#8220" withString:@"\""];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#8221" withString:@"\""];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#8217;" withString:@"'"];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#8211;" withString:@"-"];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#038;" withString:@"&"];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#215;" withString:@"x"];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#039;" withString:@"'"];
            articleBody = [articleBody stringByReplacingOccurrencesOfString:@"&#60;" withString:@"<"];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#8230" withString:@"... "];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#8217;" withString:@"'"];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#038;" withString:@"&"];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#039;" withString:@"'"];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#8211;" withString:@"-"];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#215;" withString:@"x"];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#8220" withString:@"\""];
            articleTitle = [articleTitle stringByReplacingOccurrencesOfString:@"&#8221" withString:@"\""];
            
            
            art.title = articleTitle;
            art.article = articleBody;
            [articleArray addObject:art];
            elem_ARTICLE = [TBXML nextSiblingNamed:@"item" searchFromElement:elem_ARTICLE];
            
        }
    }
=======
>>>>>>> 5290edade064b759f8a674357c80a4ddfdf26749
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
