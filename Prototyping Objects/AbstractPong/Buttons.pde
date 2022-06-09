boolean startGameButton = false;
boolean  instructionsButton = false;
boolean  exitGameButton = false;
color white = #FFFFFF;
class Button {

  void instructionButton() {
    fill(white);
    textSize(20);
    rect(10, 20, 300, 200);
  }

  void exitGameButton() {
    fill(white);
    textSize(20);
    rect(10, 20, 250, 200);
  }

  void startGameButton() {
    fill(white);
    textSize(20);
    rect(10, 20, 350, 200);
  }
}//End Button
