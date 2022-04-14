import processing.sound.*;
SoundFile ding;

Ball ball;

Paddle left;
Paddle right;

int leftScore = 0;
int rightScore = 0;

void setup() {
 size(600, 400); 
 ding = new SoundFile(this,"ding.mp3");
 ball = new Ball();
 left = new Paddle(true);
 right = new Paddle(false);
 
 
 System.out.println("For left paddle use: 'w' & 's' || For right paddle use: 'Up' & 'Down' arrow keys");
 System.out.println("For EASY, MEDIUM OR GOD MODE || PRESS E, M OR G");
}//End setup

void draw(){
 background(0); 
 
 ball.checkPaddleRight(right);
 ball.checkPaddleLeft(left);

 left.display();
 right.display();
 left.update();
 right.update();
 
 ball.update();
 ball.sides();
 ball.display();

 fill(255);
  textSize(32);
  text(leftScore, 32, 40);
  text(rightScore, width-64, 40);
  scoreColourModifier();
  GameOver(); 

}//End Draw

void keyPressed() {
if (key == CODED && key == 'W' || key == 'w'){
  left.move(-8);
}
  if (key == CODED && key == 'S' || key == 's'){
  left.move(8);
  }
  if (key == CODED && key == 'D' || key == 'd'){
    left.move(0);
  }
   if (key == CODED && keyCode == UP){
   right.move(-8);
  }
  if (key == CODED && keyCode == DOWN){ 
  right.move(8);
}
   if (key == CODED && keyCode == LEFT){
    right.move(0); 
   }
}//End KeyPressed
