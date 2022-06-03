import processing.sound.*;
SoundFile ding;
SoundFile boing;
Ball ball;

Paddle left;
Paddle right;

int leftScore = 0;
int rightScore = 0;

void setup() {
 size(600, 400); 
 ding = new SoundFile(this,"ding.mp3");
 boing = new SoundFile(this,"boing.mp3");
 ball = new Ball();
 left = new Paddle(true);
 right = new Paddle(false);

}//End setup

void draw(){
  background(#030000);
  instructionsButton();
  exitGameButton();
  startGameButton();
  
if (instructionsButton == true){
 instructions(); 
}//Instructions

 if(startGameButton == true){
   
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
 }//End Game
}//End Draw

void mousePressed(){
 if (startGameButton){
   startGameButton = true;
 }
 if (exitGameButton){
  exit(); 
 }
 if(instructionsButton){
 instructionsButton = true;
 }
}//End mousePressed
void keyPressed(){
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
