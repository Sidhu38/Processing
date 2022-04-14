int leftPaddleSpeed = 0;
Boolean leftPaddleUP=false, leftPaddleDOWN=false, screenSaver=false;

void leftPaddleDraw() {
  leftPaddleStart(); 
  
  if ( screenSaver==true ) { 
    yLeftPaddle = yBall-heightPaddle*1/2; 
    yRightPaddle = yBall-heightPaddle*1/2; 
  }
  if ( yLeftPaddle <= height*0) yLeftPaddle = height*0;
  if ( yLeftPaddle+heightPaddle >= height) yLeftPaddle = height-heightPaddle; 
  if ( leftPaddleUP==true ) yLeftPaddle -= leftPaddleSpeed ;
  if ( leftPaddleDOWN==true ) yLeftPaddle += leftPaddleSpeed ;
}

void leftPaddleMoveKeyPressed() {
  
  if ( leftPaddleSpeed==0 ) {
    if ( key=='F' || key=='f' ) {
      screenSaver = true;
      leftPaddleSpeed = 1; 
      rightPaddleSpeed = 1;
      
    }
    if ( key=='N' || key=='n' ) leftPaddleSpeed = 2;
    if ( key=='R' || key=='r' ) leftPaddleSpeed = 4;
    if ( key=='G' || key=='g' ) leftPaddleSpeed = 8;
  }

  if ( key=='W' || key=='w' ) {
    leftPaddleUP=true;
    leftPaddleDOWN=false;
  } 
  if ( key=='S' || key=='s' ) {
    leftPaddleUP=false;
    leftPaddleDOWN=true;
  }
  if ( key=='D' || key=='d' ) {
    leftPaddleUP=false;
    leftPaddleDOWN=false;
  }
}

void leftPaddleStart() {
  rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
}//End leftPaddleStart()
