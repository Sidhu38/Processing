 class Circle extends Shape{
  float diameter;

  Circle(float x, float y, float diameter){
    
    super(x,y);
    this.diameter = diameter;
  }//End Contructor
  
   final void draw(){
   fill(face);
   circle(width/2,height/2, diameter);
   //eye sockets 
   fill(black);
  circle(width/2-40, height/2-50, diameter/4);
     fill(black);
  circle(width/2+40, height/2-50, diameter/4);
  //The white in a eye 
    fill(white);
  circle(width/2-40, height/2-50, diameter/5);
     fill(white);
  circle(width/2+40, height/2-50, diameter/5);
   //Eye Color
      fill(blue);
  circle(width/2-40, height/2-50, diameter/8);
     fill(blue);
  circle(width/2+40, height/2-50, diameter/8);
  //Pupils
     fill(black);
  circle(width/2-40, height/2-50, diameter/12);
     fill(black);
  circle(width/2+40, height/2-50, diameter/12);
 //Tounge
    //fill(red);
//arc(x, y+60, 100, 100, PI, TWO_PI);
  }//End Draw
  
  
}//End Circle
