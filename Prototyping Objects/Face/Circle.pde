class Circle extends Point {
  //Global Variables
  float diameter;

  //Constructor
  Circle(float x, float y, float diameter) {
    super(x, y);
    this.diameter = diameter;
  }//End Constructor
  
  void draw() {
   fillCode();
    circle(x, y, diameter);
    fillWhite();//Reset to white colour
  }//End draw
  color fillColour( color colour) {
  if(colour != 255) {
  return 255;
  } else {
  return color (random(255),random(255),random(255));
  }//End if
  }//End fillColour
  //Common Methods
}//End Circle
