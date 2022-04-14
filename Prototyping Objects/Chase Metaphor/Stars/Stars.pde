int NumberOfStars = 20; 
Ball[] stars = new Ball[NumberOfStars]; 

int appWidth, appHeight; //final variables
int smallerDisplayDimension; //final variable

void setup() {
  size (500, 600); //fullScreen, displayWidth, displayHeight

  println (width, height, displayWidth, displayHeight);
  appWidth = width; // switch with displayWidth
  appHeight = height; // switch with displayHeight
  smallerDisplayDimension = ( appWidth <= appHeight ) ? appWidth : appHeight;
  
  for (int i=0; i<stars.length; i++) {
    //Randomly choose parameters
    float diameterRandom = random ( smallerDisplayDimension*1/20 , smallerDisplayDimension*1/10); 
    float xRandom = random (0 + diameterRandom*1/2, appWidth-diameterRandom); //No stars in net
    float yRandom = random (0 + diameterRandom*1/2, appWidth-diameterRandom); //Entire appHeight ok
    stars[i] = new Ball (xRandom, yRandom, diameterRandom);
    int j = i;
    while (j>=0){
    
    if( xRandom > stars.[j].ballX-stars[j].ballDiameter*1/2 && xRandom < stars.[j].ballX-stars[j].ballDiameter*1/2 ) {
     xRandom = random (0 + diameterRandom*1/2, appWidth-diameterRandom);
    }
    j--;
    }
     
    stars[i] = new Ball (xRandom, yRandom, diameterRandom);
  }//End Population
  
}//End setup

void draw() {
  for ( int i=0; i<stars.length; i++ ) {
    stars[i].drawStar();
  }//End FOR
  
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}
