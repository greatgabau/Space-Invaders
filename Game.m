//
//  Game.m
//  joc vanatoare
//
//  Created by gabau on 7/3/14.
//  Copyright (c) 2014 gabau. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)VISITME:(id)sender{
    
    
    
}

-(void)GameOver{
    
   
    WinorLosee.hidden = YES;
    WinorLosee.text = [NSString stringWithFormat:@"YOU LOSE"];
    VISITME.hidden = NO;
    Lose2.hidden = NO;
    Winner.hidden = YES;
    Monster1.hidden = YES;
    Monster2.hidden = YES;
    Monster3.hidden = YES;
    Monster4.hidden = YES;
    Monster5.hidden = YES;
    Monster6.hidden = YES;
    Monster7.hidden = YES;
    Monster8.hidden = YES;
    Monster9.hidden = YES;
    Monster10.hidden = YES;
    Monster11.hidden = YES;
    Monster12.hidden = YES;
    Monster13.hidden = YES;
    Monster14.hidden = YES;
    Monster15.hidden = YES;
    Monster16.hidden = YES;
    Monster17.hidden = YES;
    Monster18.hidden = YES;
    curcan.hidden = YES;
    glont.hidden = YES;
    Monsterglont.hidden = YES;
    Monsterglont2.hidden = YES;
    Monsterglont3.hidden = YES;
    SHOOT.hidden = YES;
    EXIT.hidden = NO;
    [MovementTimer invalidate];
    
}

-(void)MonsterMoveDown{
    
    Monster1.center = CGPointMake(Monster1.center.x, Monster1.center.y + 3);
    Monster2.center = CGPointMake(Monster2.center.x, Monster2.center.y + 3);
    Monster3.center = CGPointMake(Monster3.center.x, Monster3.center.y + 3);
    Monster4.center = CGPointMake(Monster4.center.x, Monster4.center.y + 3);
    Monster5.center = CGPointMake(Monster5.center.x, Monster5.center.y + 3);
    Monster6.center = CGPointMake(Monster6.center.x, Monster6.center.y + 3);
    Monster7.center = CGPointMake(Monster7.center.x, Monster7.center.y + 3);
    Monster8.center = CGPointMake(Monster8.center.x, Monster8.center.y + 3);
    Monster9.center = CGPointMake(Monster9.center.x, Monster9.center.y + 3);
    Monster10.center = CGPointMake(Monster10.center.x, Monster10.center.y + 3);
    Monster11.center = CGPointMake(Monster11.center.x, Monster11.center.y + 3);
    Monster12.center = CGPointMake(Monster12.center.x, Monster12.center.y + 3);
    Monster13.center = CGPointMake(Monster13.center.x, Monster13.center.y + 3);
    Monster14.center = CGPointMake(Monster14.center.x, Monster14.center.y + 3);
    Monster15.center = CGPointMake(Monster15.center.x, Monster15.center.y + 3);
    Monster16.center = CGPointMake(Monster16.center.x, Monster16.center.y + 3);
    Monster17.center = CGPointMake(Monster17.center.x, Monster17.center.y + 3);
    Monster18.center = CGPointMake(Monster18.center.x, Monster18.center.y + 3);
}

-(void)MonsterKilled {
    
    MonstersKilled = MonstersKilled + 1;
    glontsOnScreen = 0;
    glont.hidden = YES;
    glontMovement = 0;
    glont.center = CGPointMake(207, 559);
    
    if (MonstersKilled == 18) {
        WinorLosee.hidden = YES;
        WinorLosee.text = [NSString stringWithFormat:@"YOU WIN !"];
        VISITME.hidden = NO;
        Winner.hidden = NO;
        Lose2.hidden = YES;
        curcan.hidden = YES;
        SHOOT.hidden = YES;
        EXIT.hidden = NO;
        Monsterglont.hidden = YES;
        Monsterglont2.hidden = YES;
        Monsterglont3.hidden = YES;
        [MovementTimer invalidate];
    }
}

-(void)Collision{
    
    if (CGRectIntersectsRect(Monsterglont.frame, curcan.frame)) {
        [self GameOver];
    }
    if (CGRectIntersectsRect(Monsterglont2.frame, curcan.frame)) {
        [self GameOver];
    }
    if (CGRectIntersectsRect(Monsterglont3.frame, curcan.frame)) {
        [self GameOver];
    }
    
    if ((CGRectIntersectsRect(Monster1.frame, curcan.frame)) && (Monster1Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster2.frame, curcan.frame)) && (Monster2Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster3.frame, curcan.frame)) && (Monster3Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster4.frame, curcan.frame)) && (Monster4Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster5.frame, curcan.frame)) && (Monster5Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster6.frame, curcan.frame)) && (Monster6Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster7.frame, curcan.frame)) && (Monster7Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster8.frame, curcan.frame)) && (Monster8Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster9.frame, curcan.frame)) && (Monster9Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster10.frame, curcan.frame)) && (Monster10Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster11.frame, curcan.frame)) && (Monster11Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster12.frame, curcan.frame)) && (Monster12Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster13.frame, curcan.frame)) && (Monster13Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster14.frame, curcan.frame)) && (Monster14Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster15.frame, curcan.frame)) && (Monster15Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster16.frame, curcan.frame)) && (Monster16Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster17.frame, curcan.frame)) && (Monster17Hit == NO)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Monster18.frame, curcan.frame)) && (Monster18Hit == NO)) {
        [self GameOver];
    }
    
    
    if ((CGRectIntersectsRect(glont.frame, Monster1.frame)) && (Monster1Hit == NO)) {
        Monster1Hit = YES;
        Monster1.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster2.frame)) && (Monster2Hit == NO)) {
        Monster2Hit = YES;
        Monster2.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster3.frame)) && (Monster3Hit == NO)) {
        Monster3Hit = YES;
        Monster3.hidden = YES;
        [self MonsterKilled];
        
        
    }
    if ((CGRectIntersectsRect(glont.frame, Monster4.frame)) && (Monster4Hit == NO)) {
        Monster4Hit = YES;
        Monster4.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster5.frame)) && (Monster5Hit == NO)) {
        Monster5Hit = YES;
        Monster5.hidden = YES;
        [self MonsterKilled];
        
        
    }

    if ((CGRectIntersectsRect(glont.frame, Monster6.frame)) && (Monster6Hit == NO)) {
        Monster6Hit = YES;
        Monster6.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster7.frame)) && (Monster7Hit == NO)) {
        Monster7Hit = YES;
        Monster7.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster8.frame)) && (Monster8Hit == NO)) {
        Monster8Hit = YES;
        Monster8.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster9.frame)) && (Monster9Hit == NO)) {
        Monster9Hit = YES;
        Monster9.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster10.frame)) && (Monster10Hit == NO)) {
        Monster10Hit = YES;
        Monster10.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster11.frame)) && (Monster11Hit == NO)) {
        Monster11Hit = YES;
        Monster11.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster12.frame)) && (Monster12Hit == NO)) {
        Monster12Hit = YES;
        Monster12.hidden = YES;
        [self MonsterKilled];
        
        
    }
    if ((CGRectIntersectsRect(glont.frame, Monster13.frame)) && (Monster13Hit == NO)) {
        Monster13Hit = YES;
        Monster13.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster14.frame)) && (Monster14Hit == NO)) {
        Monster14Hit = YES;
        Monster14.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster15.frame)) && (Monster15Hit == NO)) {
        Monster15Hit = YES;
        Monster15.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster16.frame)) && (Monster16Hit == NO)) {
        Monster16Hit = YES;
        Monster16.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster17.frame)) && (Monster17Hit == NO)) {
        Monster17Hit = YES;
        Monster17.hidden = YES;
        [self MonsterKilled];
        
        
    }
    
    if ((CGRectIntersectsRect(glont.frame, Monster18.frame)) && (Monster18Hit == NO)) {
        Monster18Hit = YES;
        Monster18.hidden = YES;
        [self MonsterKilled];
        
        
    }

    
}

-(IBAction)SHOOT:(id)sender{
    
    if (glontsOnScreen == 0) {
        glont.hidden = NO;
        glont.center = CGPointMake(curcan.center.x, 433);
        glontsOnScreen = glontsOnScreen + 1;
        glontMovement = 7;
    }
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    if (point.x <160) {
        curcanMovement = -7;
    }
    else{
        curcanMovement = 7;
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    curcanMovement = 0;
}


-(void)Movement{
    
    [self Collision];
    
    curcan.center = CGPointMake(curcan.center.x + curcanMovement , curcan.center.y);
    glont.center = CGPointMake(glont.center.x, glont.center.y - glontMovement);
    Monster1.center = CGPointMake(Monster1.center.x + MonsterMovement, Monster1.center.y);
    Monster2.center = CGPointMake(Monster2.center.x + MonsterMovement, Monster2.center.y);
    Monster3.center = CGPointMake(Monster3.center.x + MonsterMovement, Monster3.center.y);
    Monster4.center = CGPointMake(Monster4.center.x + MonsterMovement, Monster4.center.y);
    Monster5.center = CGPointMake(Monster5.center.x + MonsterMovement, Monster5.center.y);
    Monster6.center = CGPointMake(Monster6.center.x + MonsterMovement, Monster6.center.y);
    Monster7.center = CGPointMake(Monster7.center.x + MonsterMovement, Monster7.center.y);
    Monster8.center = CGPointMake(Monster8.center.x + MonsterMovement, Monster8.center.y);
    Monster9.center = CGPointMake(Monster9.center.x + MonsterMovement, Monster9.center.y);
    Monster10.center = CGPointMake(Monster10.center.x + MonsterMovement, Monster10.center.y);
    Monster11.center = CGPointMake(Monster11.center.x + MonsterMovement, Monster11.center.y);
    Monster12.center = CGPointMake(Monster12.center.x + MonsterMovement, Monster12.center.y);
    Monster13.center = CGPointMake(Monster13.center.x + MonsterMovement, Monster13.center.y);
    Monster14.center = CGPointMake(Monster14.center.x + MonsterMovement, Monster14.center.y);
    Monster15.center = CGPointMake(Monster15.center.x + MonsterMovement, Monster15.center.y);
    Monster16.center = CGPointMake(Monster16.center.x + MonsterMovement, Monster16.center.y);
    Monster17.center = CGPointMake(Monster17.center.x + MonsterMovement, Monster17.center.y);
    Monster18.center = CGPointMake(Monster18.center.x + MonsterMovement, Monster18.center.y);
    Monsterglont.center = CGPointMake(Monsterglont.center.x, Monsterglont.center.y + 10);
    Monsterglont2.center = CGPointMake(Monsterglont2.center.x, Monsterglont2.center.y + 10);
    Monsterglont3.center = CGPointMake(Monsterglont3.center.x, Monsterglont3.center.y + 10);
    
    if (Monsterglont.center.y > 578) {
        MonsterSHOOTERSTAR = arc4random() %315;
        Monsterglont.center = CGPointMake(MonsterSHOOTERSTAR, 0);
    }
    
    if (Monsterglont2.center.y > 578) {
        MonsterSHOOTERSTAR = arc4random() %315;
        Monsterglont2.center = CGPointMake(MonsterSHOOTERSTAR, 0);
    }
    
    if (Monsterglont3.center.y > 578) {
        MonsterSHOOTERSTAR = arc4random() %315;
        Monsterglont3.center = CGPointMake(MonsterSHOOTERSTAR, 0);
    }
    
    
    if (glont.center.y < 0) {
        glont.hidden = YES;
        glontsOnScreen = 0;
        glontMovement = 0;
    }
    
    if ((Monster1.center.x < 15) && (Monster1Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    
    else if ((Monster2.center.x < 15) && (Monster2Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster3.center.x < 15) && (Monster3Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster4.center.x < 15) && (Monster4Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster5.center.x < 15) && (Monster5Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster6.center.x < 15) && (Monster6Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster7.center.x < 15) && (Monster7Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster8.center.x < 15) && (Monster8Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster9.center.x < 15) && (Monster9Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster10.center.x < 15) && (Monster10Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster11.center.x < 15) && (Monster11Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster12.center.x < 15) && (Monster12Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster13.center.x < 15) && (Monster13Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster14.center.x < 15) && (Monster14Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster15.center.x < 15) && (Monster15Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster16.center.x < 15) && (Monster16Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster17.center.x < 15) && (Monster17Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster18.center.x < 15) && (Monster18Hit == NO)){
        MonsterMovement = 3;
        [self MonsterMoveDown];
    }
    else if ((Monster1.center.x > 306) && (Monster1Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster2.center.x > 306) && (Monster2Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster3.center.x > 306) && (Monster3Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster4.center.x > 306) && (Monster4Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster5.center.x > 306) && (Monster5Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster6.center.x > 306) && (Monster6Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster7.center.x > 306) && (Monster7Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster8.center.x > 306) && (Monster8Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster9.center.x > 306) && (Monster9Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster10.center.x > 306) && (Monster10Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster11.center.x > 306) && (Monster11Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster12.center.x > 306) && (Monster12Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster13.center.x > 306) && (Monster13Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster14.center.x > 306) && (Monster14Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster15.center.x > 306) && (Monster15Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster16.center.x > 306) && (Monster16Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster17.center.x > 306) && (Monster17Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }
    else if ((Monster18.center.x > 306) && (Monster18Hit == NO)){
        MonsterMovement = -3;
        [self MonsterMoveDown];
    }


    
}


-(IBAction)START:(id)sender{
    
    START.hidden = YES;
    EXIT.hidden = YES;
    VISITME.hidden = YES;
    SHOOT.hidden = NO;
    curcan.hidden = NO;
    Winner.hidden = YES;
    
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
    
    Monster1.hidden = NO;
    Monster2.hidden = NO;
    Monster3.hidden = NO;
    Monster4.hidden = NO;
    Monster5.hidden = NO;
    Monster6.hidden = NO;
    Monster7.hidden = NO;
    Monster8.hidden = NO;
    Monster9.hidden = NO;
    Monster10.hidden = NO;
    Monster11.hidden = NO;
    Monster12.hidden = NO;
    Monster13.hidden = NO;
    Monster14.hidden = NO;
    Monster15.hidden = NO;
    Monster16.hidden = NO;
    Monster17.hidden = NO;
    Monster18.hidden = NO;
    
    Monsterglont.hidden = NO;
    Monsterglont2.hidden = NO;
    Monsterglont3.hidden = NO;
    
    MonsterSHOOTERSTAR = arc4random() %315;
    Monsterglont.center = CGPointMake(MonsterSHOOTERSTAR, 0);
    
    MonsterSHOOTERSTAR = arc4random() %315;
    Monsterglont2.center = CGPointMake(MonsterSHOOTERSTAR, -150);
    
    MonsterSHOOTERSTAR = arc4random() %315;
    Monsterglont3.center = CGPointMake(MonsterSHOOTERSTAR, -300);
    
    
    
    
}




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    glont.hidden = YES;
    SHOOT.hidden = YES;
    EXIT.hidden = YES;
    curcan.hidden = YES;
    Winner.hidden = YES;
    Lose2.hidden = YES;
    
    Monster1Hit = NO;
    Monster2Hit = NO;
    Monster3Hit = NO;
    Monster4Hit = NO;
    Monster5Hit = NO;
    Monster6Hit = NO;
    Monster7Hit = NO;
    Monster8Hit = NO;
    Monster9Hit = NO;
    Monster10Hit = NO;
    Monster11Hit = NO;
    Monster12Hit = NO;
    Monster13Hit = NO;
    Monster14Hit = NO;
    Monster15Hit = NO;
    Monster16Hit = NO;
    Monster17Hit = NO;
    Monster18Hit = NO;
    
    Monster1.hidden = YES;
    Monster2.hidden = YES;
    Monster3.hidden = YES;
    Monster4.hidden = YES;
    Monster5.hidden = YES;
    Monster6.hidden = YES;
    Monster7.hidden = YES;
    Monster8.hidden = YES;
    Monster9.hidden = YES;
    Monster10.hidden = YES;
    Monster11.hidden = YES;
    Monster12.hidden = YES;
    Monster13.hidden = YES;
    Monster14.hidden = YES;
    Monster15.hidden = YES;
    Monster16.hidden = YES;
    Monster17.hidden = YES;
    Monster18.hidden = YES;
    
    Monsterglont.hidden = YES;
    Monsterglont2.hidden = YES;
    Monsterglont3.hidden = YES;
    
    
    WinorLosee.hidden = YES;
    
    
    
    MonsterMovement = 3;
    MonstersKilled = 0;

    
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
