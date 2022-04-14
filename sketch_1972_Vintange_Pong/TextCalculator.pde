PFont textFont;
color redInk =  #F70202;
color whiteInk = #FFFFFF;

void textSetup()
{
  textFont = createFont("ArialMT", 55);
}

void preDrawText(float height, color ink, int alignHorizontal, int alignVertical, PFont font)
{
  fill(ink);
  textAlign(alignHorizontal, alignVertical);
  textFont(font, height);
}

void textDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float rectX, float rectY, float rectWidth, float rectHeight)
{
  preDrawText(height, ink, alignHorizontal,alignVertical, font);
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}

void textReset()
{
  fill(whiteInk);
}

float textCalculator(float size, String string, float rectWidth)
{
  textSize(size); 
  while ( textWidth(string) > rectWidth)
  {
    size = size * 0.99; 
    textSize(size);
  }
  size =  size * 0.30; 
  return size; 
}
