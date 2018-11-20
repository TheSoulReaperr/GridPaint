Button Color;
Button Redup;
Button Reddo;
Button Greenup;
Button Greendo;
Button Blueup;
Button Bluedo;
Button Red;
Button Green;
Button Blue;

boolean newsize = false;
boolean keyPad = false;
boolean error = false;
PFont Font;
float x;
float y;
float s;
int size = 16;
int red = 0;
int green = 150;
int blue = 255;

void setup() {
  fullScreen();
  Font =  createFont("OCR A Std",100);
  textFont(Font);
  InitializeGrid();
  InitButtons();
}

void draw() {
  background(50, 50, 70);
  drawGrid();
  drawStuffs();
  drawButtons();
  drawTexts();
}

void InitColorButtons() {
  Color = new Button(width/3.36,height/7.31,width/8.0,height/4.0);
  Color.Stroke(255,255,255,1);
  Color.Color(red,green,blue);
  
  Reddo = new Button(width/54.4,height/7.31,width/15.0,height/15.0);
  Reddo.Color(255,80,100);
  Reddo.Stroke(255,80,100,1);
  Reddo.Text("<",255,255,255,40);
  
  Red = new Button(width/11,height/7.31,width/8,height/15.0);
  Red.Color(255,255,255);
  Red.Stroke(200,200,200,1);
  Red.Num(red,255,80,100,30);
  
  Redup = new Button(width/3.46-width/15.0,height/7.31,width/15.0,height/15.0);
  Redup.Color(255,80,100);
  Redup.Stroke(255,80,100,1);
  Redup.Text(">",255,255,255,40);
  
  Greendo = new Button(width/54.4,height/4.57,width/15.0,height/15.0);
  Greendo.Color(80,255,100);
  Greendo.Stroke(80,255,100,1);
  Greendo.Text("<",255,255,255,40);
  
  Green = new Button(width/11,height/4.57,width/8,height/15.0);
  Green.Color(255,255,255);
  Green.Stroke(200,200,200,1);
  Green.Num(green,80,255,100,30);
  
  Greenup = new Button(width/3.46-width/15.0,height/4.57,width/15.0,height/15.0);
  Greenup.Color(80,255,100);
  Greenup.Stroke(80,255,100,1);
  Greenup.Text(">",255,255,255,40);
  
  Bluedo = new Button(width/54.4,height/3.3,width/15.0,height/15.0);
  Bluedo.Color(80,100,255);
  Bluedo.Stroke(80,100,255,1);
  Bluedo.Text("<",255,255,255,40);
  
  Blue = new Button(width/11,height/3.3,width/8,height/15.0);
  Blue.Color(255,255,255);
  Blue.Stroke(200,200,200,1);
  Blue.Num(blue,80,100,255,30);
  
  Blueup = new Button(width/3.46-width/15.0,height/3.3,width/15.0,height/15.0);
  Blueup.Color(80,100,255);
  Blueup.Stroke(80,100,255,1);
  Blueup.Text(">",255,255,255,40);
}

void drawColorButtons() {
  Color.Draw();
  Color.Color(red,green,blue);
  
  if(red < 1)  red = 0;
  if(blue <1)  blue= 0;
  if(green<1)  green=0;
  if(red > 254)  red = 255;
  if(blue >254)  blue =255;
  if(green>254)  green=255;
  
  Redup.Draw();
  Red.Draw();
  Red.no = red;
  Reddo.Draw();
  Greenup.Draw();
  Green.Draw();
  Green.no = green;
  Greendo.Draw();
  Blueup.Draw();
  Blue.Draw();
  Blue.no =blue;
  Bluedo.Draw();
  
  if(Redup.mousePressed()) red++;
  if(Reddo.mousePressed()) red--;  
  if(Greenup.mousePressed()) green++;
  if(Greendo.mousePressed()) green--;  
  if(Blueup.mousePressed()) blue++;
  if(Bluedo.mousePressed()) blue--;
}
