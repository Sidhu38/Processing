void gameOn(){
 background(black);
  
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
}
