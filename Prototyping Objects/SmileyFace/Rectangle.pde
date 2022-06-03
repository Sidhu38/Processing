final class Rectangle extends Square {
  color mouth = #E38A57;
  float sideHeight;
  
  Rectangle(float x, float y, float side, float sideHeight) {
    super(x, y, side);
    this.sideHeight = sideHeight;
  }//End Constructor
  
  void draw(){
   fill(red);
   rect(x+225 , y+300, side ,sideHeight);
   
  }
  
  
  }//End Rect
