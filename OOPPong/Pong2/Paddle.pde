
class Paddle{
float x;
float y = height/2;
float w = 15;
float h = 100;
float yChange = 0;

  Paddle(boolean left) {
    if ( left) {
   x =  w;
    } else 
    { x = width - w;}
    
  }//End Paddle
  
  void update() {
   y += yChange;
   y = constrain( y, h/2, height-h/2);
  }
  
  void move(float steps){
 yChange = steps;
  }//End Move
  
  void display(){
   fill(255);
   rectMode(CENTER);
   rect(x, y, w, h);
  }//End Display
  
  void move() {
  
    
  }
 
}//End Class
