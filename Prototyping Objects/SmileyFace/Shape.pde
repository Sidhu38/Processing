abstract class Shape {
  float x, y;
 
 Shape(float xPara, float yPara){
   
    this.x = xPara;
    this.y = yPara;
  }//End Contructor
  abstract void draw();
  
}//End Shape
