import processing.sound.*;
SoundFile ding;
SoundFile boing;
Ball ball;

Paddle left;
Paddle right;

int leftScore = 0;
int rightScore = 0;
boolean gameOn = false;
color black = #000000;
int str = 0;
int ins = 0;
int exit = 0;

void setup() {
  size(800, 600);//change to displaywidth and height later;
  ding = new SoundFile(this, "ding.mp3");
  boing = new SoundFile(this, "boing.mp3");
  ball = new Ball();
  left = new Paddle(true);
  right = new Paddle(false);

  
}//End setup

void draw() {
startGameButton();
text("CLASSIC PONG", 300, 40);
 

if ( str == 1){
 gameOn();
}//End str
}//End Draw

void mouseClicked() {
 if (str == 0){
  str = 1;
 }
 
  
}//End mousePressed
void keyPressed() {
  if (key == CODED && key == 'W' || key == 'w') {
    left.move(-8);
  }
  if (key == CODED && key == 'S' || key == 's') {
    left.move(8);
  }
  if (key == CODED && key == 'D' || key == 'd') {
    left.move(0);
  }
  if (key == CODED && keyCode == UP) {
    right.move(-8);
  }
  if (key == CODED && keyCode == DOWN) {
    right.move(8);
  }
  if (key == CODED && keyCode == LEFT) {
    right.move(0);
  }
}//End KeyPressed
