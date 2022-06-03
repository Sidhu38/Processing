ArrayList<Shape> shapes = new ArrayList<Shape>();
color black = #000000;
int x;
int y;


void setup(){
  size(600,600);
  
float centerX = width*1/2;
float centerY = height*1/2;
float diameter = width*1/3;

float side = width*1/4;
float sideHeight = height*1/12;

Circle c = new Circle(centerX , centerY, diameter);
Rectangle r = new Rectangle (x , y , side , sideHeight);
Square s = new Square(x, y, side);


  shapes.add(c);
  shapes.add(r);
  shapes.add(s);
}//End Setup

void draw(){
  background(black);
    for ( Shape s : shapes ) {
    s.draw();
  }
}//End Draw
