//
//  Game.h
//  joc vanatoare
//
//  Created by gabau on 7/3/14.
//  Copyright (c) 2014 gabau. All rights reserved.
//

#import <UIKit/UIKit.h>

int curcanMovement;
int glontMovement;
int glontsOnScreen;
int MonstersKilled;
BOOL Monster1Hit;
BOOL Monster2Hit;
BOOL Monster3Hit;
BOOL Monster4Hit;
BOOL Monster5Hit;
BOOL Monster6Hit;
BOOL Monster7Hit;
BOOL Monster8Hit;
BOOL Monster9Hit;
BOOL Monster10Hit;
BOOL Monster11Hit;
BOOL Monster12Hit;
BOOL Monster13Hit;
BOOL Monster14Hit;
BOOL Monster15Hit;
BOOL Monster16Hit;
BOOL Monster17Hit;
BOOL Monster18Hit;
int MonsterMovement;
int MonsterSHOOTERSTAR;


@interface Game : UIViewController
{
    IBOutlet UIButton *START;
    IBOutlet UIButton *EXIT;
    IBOutlet UIButton *SHOOT;
    IBOutlet UIButton *VISITME;
    
    IBOutlet UIImageView *curcan;
    IBOutlet UIImageView *glont;
    
    IBOutlet UIImageView *Monster1;
    IBOutlet UIImageView *Monster2;
    IBOutlet UIImageView *Monster3;
    IBOutlet UIImageView *Monster4;
    IBOutlet UIImageView *Monster5;
    IBOutlet UIImageView *Monster6;
    IBOutlet UIImageView *Monster7;
    IBOutlet UIImageView *Monster8;
    IBOutlet UIImageView *Monster9;
    IBOutlet UIImageView *Monster10;
    IBOutlet UIImageView *Monster11;
    IBOutlet UIImageView *Monster12;
    IBOutlet UIImageView *Monster13;
    IBOutlet UIImageView *Monster14;
    IBOutlet UIImageView *Monster15;
    IBOutlet UIImageView *Monster16;
    IBOutlet UIImageView *Monster17;
    IBOutlet UIImageView *Monster18;
    
    IBOutlet UIImageView *Monsterglont;
    IBOutlet UIImageView *Monsterglont2;
    IBOutlet UIImageView *Monsterglont3;
    
    IBOutlet UIImageView *Winner;
    IBOutlet UIImageView *Lose2;
    
    
    
    IBOutlet UILabel *WinorLosee;
    
    
    NSTimer *MovementTimer;
    
}

-(IBAction)START:(id)sender;
-(IBAction)SHOOT:(id)sender;
-(IBAction)VISITME:(id)sender;
-(void)Movement;
-(void)Collision;
-(void)MonsterKilled;
-(void)MonsterMoveDown;
-(void)GameOver;

@end
