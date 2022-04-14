int xMove, yMove; 
int rightGoalScore= 0, leftGoalScore= 0;
Boolean rightGoal = false, leftGoal= false;

void ball() {
  ballStart();
  ballMove();

}//End ball()

void ballMove() {
    
  if ( xBall < xLeftPaddle+widthPaddle+(ballDiameter*1/2) && yBall > yLeftPaddle && yBall < yLeftPaddle+heightPaddle ) xMove*=-1;
  if ( xBall >= xRightPaddle && yBall > yRightPaddle && yBall < yRightPaddle+heightPaddle ) xMove*=-1;
  if ( yBall<=(height*0)+(ballDiameter*1/2) || yBall>=height-(ballDiameter*1/2) ) yMove*=-1;
  
  if (xBall >= x1RightNet+(ballDiameter*1/2)) {
    xBall = width-ballDiameter*1/2;
    rightGoal = true;
  } else if (xBall <= x1LeftNet-(ballDiameter*1/2)) {
    xBall = (width*0)+(ballDiameter*1/2);
    leftGoal = true;
  } else {
    xBall += xMove;
    yBall += yMove;
  }
}
void ballStart() {
  ellipse(xBall, yBall, ballDiameter, ballDiameter);
}
