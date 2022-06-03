class Point extends Shape {
  //Global Variables
  color colour = 255;
  //Constructor
  Point (float x, float y) {
    super(x, y);
  }//End Constructor
  
  void draw() {
    stroke(255);
    point(x, y);
    stroke(0);
  }//End daw
  
  //Common Methods
  void fillCode() {
  fill (fillColour ( colour ));
  }//End fillCode
  void fillWhite() {
    fill ( fillColour(colour));
  }//End fillWhite
  color fillColour ( color colour ){
  return color(0, 0, 0);
  }//End fillColour
}//End Point
