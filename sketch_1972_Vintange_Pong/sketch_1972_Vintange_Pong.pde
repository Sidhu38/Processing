float xBall, yBall, ballDiameter;
float xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle, xRightPaddle, yRightPaddle;
float xLeftScore, yLeftScore, xRightScore, yRightScore, widthScore, heightScore;
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
Boolean geometryCheck = false, restart=false;

void setup() {
  size(800, 500);
  population(); 
  textSetup();  
   
}//End setup

void draw() {
  
if ( geometryCheck == false ) displayGeometryCheck();
 
  if ( leftPaddleSpeed>0 && rightPaddleSpeed>0 ) {
   
    if ( rightGoal==true || leftGoal==true ) {
      afterGoalScored();
    } else { 
      if (restart==false) gameOn();
    } 
  } else {
    startingInstructions();
  }


}//End draw

void keyPressed() {
  leftPaddleMoveKeyPressed();
  rightPaddleMoveKeyPressed();
  if(key=='P' || key== 'p') restart=false;
}

void mousePressed() {
} 
