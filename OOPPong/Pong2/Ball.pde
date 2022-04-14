class Ball {
 float x = width/2;
 float y = height/2;
 float xSpeed = 2;
 float ySpeed = 3;
 float r = 12;
 
void checkPaddleLeft(Paddle p){
  if(y - r < p.y + p.h/2 && y + r > p.y - p.h/2 && x - r < p.x + p.w/2){
     if (x > p.x) {
        float diff = y - (p.y - p.h/2);
        float rad = radians(45);
        float angle = map(diff, 0, p.h, -rad, rad);
        xSpeed = 5 * cos(angle);
        ySpeed = 5 * sin(angle);
        x = p.x + p.w/2 + r;
      }  
   }
}//End CheckPaddleLeft

void checkPaddleRight(Paddle p){
  if( y - r < p.y + p.h/2 && y + r > p.y - p.h/2 && x + r > p.x - p.w/2){
   if (x < p.x) {
        float diff = y - (p.y - p.h/2);
        float angle = map(diff, 0, p.h, radians(225), radians(135));
        xSpeed = 5 * cos(angle);
        ySpeed = 5 * sin(angle);
        x = p.x - p.w/2 - r;
      }
   }
}//End CheckPaddleRight

 void update() {
  x = x + xSpeed;
  y = y + ySpeed;
 }//End update
 
 void reset() {
    x = width/2;
    y = height/2;
    float angle = random(-PI/4, PI/4);
  
    xSpeed = 5 * cos(angle);
    ySpeed = 5 * sin(angle);

   if (random(1) < 0.5) {
   }
 }//End reset

void sides(){
  if ( y < 0 || y > height) {
    ySpeed *= -1;
  } 
  if(x - r > width) {
    ding.play();
    leftScore++;
   reset(); 
  }
  if( x + r < 0){
    ding.play();
    rightScore++;
     reset();
  }
}//End sides

 void display() { 
  fill(255);
  ellipse( x, y, r*2, r*2);
  if (leftScore >= 5 || rightScore >= 5){
    xSpeed = 5;
    ySpeed = 5;
  }
}//End Display

}//End Class
