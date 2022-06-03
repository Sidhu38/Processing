abstract class Shape {
  color blue = #0CE3F5;
  color white = #FFFFFF;
  color face = #FEFF03;
  color red = #F53E53;
  float x, y;
 
 Shape(float xPara, float yPara){
   
    this.x = xPara;
    this.y = yPara;
  }//End Contructor
  
  abstract void draw();
  
  
}//End Shape
