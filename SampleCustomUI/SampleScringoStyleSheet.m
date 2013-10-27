//
//  SampleScringoStyleSheet.m
//  ScringoExample3
//
//  Created by Ofer Kalisky on 10/23/13.
//  Copyright (c) 2013 Ziggy Software. All rights reserved.
//

#import "SampleScringoStyleSheet.h"

@implementation SampleScringoStyleSheet

-(void)customizeDefaultButtonStyle:(UIButton *)aButton inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    [aButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [aButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [aButton setBackgroundImage:[UIImage imageNamed:@"BlueBtn"] forState:UIControlStateNormal];
    [aButton setBackgroundImage:[UIImage imageNamed:@"BlueBtnPressed"] forState:UIControlStateHighlighted];
}

-(void)customizeBackgroundView:(UIImageView *)backgroundView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    backgroundView.backgroundColor = [UIColor colorWithRed:216.0/255 green:240.0/255 blue:248.0/255 alpha:1];
    backgroundView.image = nil;
}

-(void)customizeNavbarView:(UIView *)navView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    navView.backgroundColor = [UIColor colorWithRed:0 green:117.0/255 blue:186.0/255 alpha:1];
}

-(void)customizeBackButton:(UIButton *)backButton inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    [backButton setBackgroundImage:nil forState:UIControlStateNormal];
    [backButton setBackgroundImage:nil forState:UIControlStateHighlighted];
}

-(void)customizeTableCellSelectedBackgroundView:(UIView *)selectedBackgroundView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    selectedBackgroundView.backgroundColor = [UIColor colorWithRed:143.0/255 green:187.0/255 blue:205.0/255 alpha:1];
}

-(void)customizeProfileMidBarView:(UIView *)midBarView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    midBarView.backgroundColor = [UIColor colorWithRed:143.0/255 green:187.0/255 blue:205.0/255 alpha:1];
    UIButton *myProfileCustomButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [myProfileCustomButton setFrame:CGRectMake(10, 10, 50, 30)];
    [myProfileCustomButton setTitle:@"More" forState:UIControlStateNormal];
    [myProfileCustomButton setTitle:@"More" forState:UIControlStateHighlighted];
    [self customizeDefaultButtonStyle:myProfileCustomButton inScreen:inScreen];
    [myProfileCustomButton addTarget:self action:@selector(customButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [midBarView addSubview:myProfileCustomButton];
}
-(void)customButtonClicked {
    NSLog(@"Clicked on my custom button");
}
-(void)customizeProfileMidBarTopImageView:(UIImageView *)midBarTopImageView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    midBarTopImageView.hidden = YES;
}
-(void)customizeProfileMidBarTopShadeView:(UIImageView *)midBarShadeImageView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    midBarShadeImageView.hidden = YES;
}
-(void)customizeTableCellTitleLabel:(UILabel *)cellTitleLabel inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    cellTitleLabel.textColor = [UIColor colorWithRed:0/255 green:116.0/255 blue:185.0/255 alpha:1];
    cellTitleLabel.shadowOffset = CGSizeMake(0, 0);
}
-(void)customizeTableCellTimeLabel:(UILabel *)cellTimeLabel inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    cellTimeLabel.textColor = [UIColor colorWithRed:143.0/255 green:143.0/255 blue:143.0/255 alpha:1];
    cellTimeLabel.shadowOffset = CGSizeMake(0, 0);
}
-(void)customizeTableCellDescriptionLabel:(UILabel *)cellDescriptionLabel inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    cellDescriptionLabel.textColor = [UIColor colorWithRed:143.0/255 green:143.0/255 blue:143.0/255 alpha:1];
    cellDescriptionLabel.shadowOffset = CGSizeMake(0, 0);
}
-(void)customizeChatroomHeaderTitle:(UILabel *)titleLabel inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    titleLabel.textColor = [UIColor colorWithRed:0/255 green:116.0/255 blue:185.0/255 alpha:1];
    titleLabel.shadowOffset = CGSizeMake(0, 0);
}

-(void)customizePostMessageBackgroundView:(UIImageView *)postBackgroundView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    postBackgroundView.image = nil;
    postBackgroundView.backgroundColor = [UIColor colorWithRed:175.0/255 green:211.0/255 blue:244.0/255 alpha:1];
}
-(void)customizeChatMyMessageBackgroundImageView:(UIImageView *)myMessageBackgroundImageView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    myMessageBackgroundImageView.image = [UIImage imageNamed:@"BlueChatBubble"];
}

-(void)customizeChatOtherMessageBackgroundImageView:(UIImageView *)otherMessageBackgroundImageView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen  {
    otherMessageBackgroundImageView.image = [UIImage imageNamed:@"GreenChatBubble"];
}

-(void)customizeProfileNameLabel:(UILabel *)nameLabel inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    nameLabel.textColor = [UIColor colorWithRed:0/255 green:116.0/255 blue:185.0/255 alpha:1];
}
-(void)customizeProfileBadUserButton:(UIButton *)badUserButton inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    [badUserButton setImage:[UIImage imageNamed:@"ScrImg_UserMoreIcon"] forState:UIControlStateNormal];
    [badUserButton setBackgroundImage:nil forState:UIControlStateNormal];
    [badUserButton setBackgroundImage:nil forState:UIControlStateHighlighted];
}
-(void)customizeLikeOnButton:(UIButton *)likeOnButton inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen  {
    [likeOnButton setImage:[UIImage imageNamed:@"LikeIcon"] forState:UIControlStateNormal];
    [likeOnButton setImage:[UIImage imageNamed:@"LikeIcon"] forState:UIControlStateHighlighted];
}
-(void)customizeChatroomHeaderCommentsButton:(UIButton *)commentsButton inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    [commentsButton setImage:[UIImage imageNamed:@"CommentIcon"] forState:UIControlStateNormal];
    [commentsButton setImage:[UIImage imageNamed:@"CommentIcon"] forState:UIControlStateHighlighted];
}

-(void)customizeUsersListSearchField:(UITextField *)searchField inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen   {
    searchField.background = [UIImage imageNamed:@"PostField"];
}

-(void)customizeActivityBackgroundView:(UIImageView *)backgroundView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    backgroundView.image = [UIImage imageNamed:@"PostBg"];
}

-(void)customizeTableSectionHeaderImageView:(UIImageView *)sectionHeaderView inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    sectionHeaderView.backgroundColor = [UIColor colorWithRed:143.0/255 green:187.0/255 blue:205.0/255 alpha:1];
    sectionHeaderView.image = nil;
}
-(void)customizeTableSectionHeaderLabel:(UILabel *)sectionHeaderLabel inScreen:(ScringoStyleSheetScreeenIdentifier)inScreen {
    sectionHeaderLabel.textColor = [UIColor colorWithRed:0/255 green:116.0/255 blue:185.0/255 alpha:1];
    sectionHeaderLabel.shadowOffset = CGSizeMake(0, 0);
}
@end
