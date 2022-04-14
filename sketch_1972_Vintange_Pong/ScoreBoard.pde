
void scoreBoardSetup() {
 textSetup();
}

void scoreBoardDraw(){
  
  if (leftGoal == true ) { leftGoalScore = 1;
    textDraw(height, redInk, CENTER, CENTER, textFont, str(leftGoalScore), xLeftScore, yLeftScore, widthScore, heightScore);
  } else {
    textDraw(height, redInk, CENTER, CENTER, textFont, str(leftGoalScore), xLeftScore, yLeftScore, widthScore, heightScore);
}
if( rightGoal == true ) rightGoalScore += 1;
textDraw(height, redInk, CENTER, CENTER, textFont, str(rightGoalScore), xRightScore, yRightScore, widthScore, heightScore);
}
