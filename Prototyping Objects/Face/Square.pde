class Square extends Point {
  //Global Variables
  float side;
  
  //Constructor
  Square(float x, float y, float side) {
    super(x, y);
    this.side = side;
  }//End Constructor
  
  void draw() {
   fillCode();
    square(x, y, side);
    fillWhite();
  }//End draw
  
  //Common Methods
  
}//End Square
