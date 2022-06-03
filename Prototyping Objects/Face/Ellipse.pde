final class Ellipse extends Circle {
  //Global Variables
  float yDiameter;
  
  //Constructor
  Ellipse(float x, float y, float diameter, float yDiameter) {
    super(x, y, diameter);
    this.yDiameter = yDiameter;
  }//End Constructor
  
  void draw() {
  fillCode();
    ellipse(x, y, diameter, yDiameter); //ptX=xDiameter, ptY=yDiameter
    fillWhite();
  }//End draw
  
  //Common Methods
  
}//End Ellipse
