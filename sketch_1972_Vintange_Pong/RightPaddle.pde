int rightPaddleSpeed = 0;
Boolean rightPaddleUP=false, rightPaddleDOWN=false, singlePlayer = false;

void rightPaddleDraw() {
  rightPaddleStart();
  
   if ( singlePlayer == true ) { 
    yRightPaddle = yBall-heightPaddle*1/2;
   }
  if ( yRightPaddle < height*0) yRightPaddle = height*0;
  if ( yRightPaddle+heightPaddle > height) yRightPaddle = height-heightPaddle; 
  
  if ( rightPaddleUP==true ) yRightPaddle -= rightPaddleSpeed ;
  if ( rightPaddleDOWN==true ) yRightPaddle += rightPaddleSpeed ;
  
}

void rightPaddleMoveKeyPressed() {

 if ( rightPaddleSpeed==0 ) {
    if ( key=='J' || key=='j' ) {
      singlePlayer = true;
      rightPaddleSpeed = 1;
    }
    if ( key=='M' || key=='m' ) rightPaddleSpeed = 2;
    if ( key=='T' || key=='t' ) rightPaddleSpeed = 4;
    if ( key=='H' || key=='h' ) rightPaddleSpeed = 8;
  }

  if ( key==CODED && keyCode==UP ) {
    rightPaddleUP=true;
    rightPaddleDOWN=false;
  }; 
  if ( key==CODED && keyCode==DOWN ) {
    rightPaddleUP=false;
    rightPaddleDOWN=true;
  }
  if ( key==CODED && keyCode==LEFT ) {
    rightPaddleUP=false;
    rightPaddleDOWN=false;
  }
}

void rightPaddleStart() {
  rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
}//End rightPaddleStart
