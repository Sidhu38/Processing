abstract class Shape {
  //Global Variables
  float x, y;
  
  //Constructor: point(), line(), ellipse(), circle(), square(), rect(), etc. (student directed)
  Shape(float xParameter, float yParameter) {//Possible Bug
    this.x = xParameter;
    this.y = yParameter;
  }//End Constructor
  
  abstract void draw();//End draw
  
  abstract public void fillWhite();
  //Common Methods
  
}//End Shape
