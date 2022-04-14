
void displayGeometryCheck()
{
  String displayWidthWorks = ( displayWidth>width ) ? "Width: Game On Dude" : "Bruh, forced width" ;
  String displayHeightWorks = ( displayHeight>=height ) ? "Height: Game On Dude" : "Bruh, forced height" ;
  String orientiation = ( width>=height ) ? weGo() : adjustScreen() ;
  println(displayWidthWorks, "\t\t", displayHeightWorks, "\t\t", orientiation);
}//End displayGeometryCheck

String weGo()
{
  geometryCheck = true;
  loop();
  return "Landscape: Game On Dude";
}//End weGo

String adjustScreen()
{
  noLoop();
  return "Bruh, rotate phun";
 
}
