class Square extends Point{
  float side;
  
  Square(float x, float y, float side){
    super(x , y);
    this.side = side;
    
  }
 void draw() {
  fill(white); 
   square(x+260 ,y+300 , side/5);
   
   fill(white); 
   square(x+310 ,y+300 , side/5);
 }
  
  
}//End Square
