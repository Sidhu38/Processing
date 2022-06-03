class Circle extends Shape{
  float diameter;
  color face = #FEFF03;
  Circle(float x, float y, float diameter){
    super(x,y);
    this.diameter = diameter;
  }//End Contructor
  
  void draw(){
   fill(face);
   circle(width/2,height/2, diameter);
   
   fill(black);
  circle(width/2-20, height/2+20, diameter/2);
  }//End Draw
  
}//End Circle
