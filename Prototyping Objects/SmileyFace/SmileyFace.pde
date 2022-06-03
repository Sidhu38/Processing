ArrayList<Shape> shapes = new ArrayList<Shape>();
color black = #000000;
int x;
int y;

 //Toolkit.getScreenSize();
void setup(){
  size(600,600);
  
 
float centerX = width*1/2;
float centerY = height*1/2;
float diameter = width*1/3;
Circle c = new Circle(centerX , centerY, diameter);

  shapes.add(c);
  
  
  
  
}//End Setup

void draw(){
  background(black);
    for ( Shape s : shapes ) {
    s.draw();
  }
}//End Draw
