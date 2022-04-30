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
}//End setup

void draw(){
 background(0); 
 // 
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.8, height*0.1);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.8, height*0.9);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  //Right side stars
  //
  pushMatrix();
  translate(width*0.2, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.2, height*0.9);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
 
   pushMatrix();
  translate(width*0.2, height*0.1);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  //Left side stars
 
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.5, height*0.1);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.5, height*0.9);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 35, 5); 
  popMatrix();
  //
  
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
