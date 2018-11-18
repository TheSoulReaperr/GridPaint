Button Color;
Button Redup;
Button Reddo;
Button Red;
Button Greenup;
Button Greendo;
Button Green;
Button Blueup;
Button Bluedo;
Button Blue;
Button Black;
Button White;

Button Custom1;
Button Custom2;
Button Custom3;
Button Custom4;
Button Custom5;
Button Custom6;
Button Custom7;
Button Custom8;
Button Custom9;
Button Custom0;

//----------------------------------------------------------------------------------------

void InitializeColorButtons() {
  Color = new Button(1060, 9, 295, 50);
  Color.Stroke(200,200,200, 1);

  Redup = new Button(1060, 64, 40, 15);
  Redup.Color(255, 50, 50);
  Redup.Stroke(200, 200, 200, 1);
  Redup.Text("▲", 255, 255, 255, 12);

  Reddo = new Button(1060, 79, 40, 15);
  Reddo.Color(255, 50, 50);
  Reddo.Stroke(200, 200, 200, 1);
  Reddo.Text("▼", 255, 255, 255, 12);

  Red = new Button(1105, 64, 50, 30);
  Red.Color(255, 255, 255);

  Greenup = new Button(1160, 64, 40, 15);
  Greenup.Color(50, 255, 50);
  Greenup.Stroke(200, 200, 200, 1);
  Greenup.Text("▲", 255, 255, 255, 12);

  Greendo = new Button(1160, 79, 40, 15);
  Greendo.Color(50, 255, 50);
  Greendo.Stroke(200, 200, 200, 1);
  Greendo.Text("▼", 255, 255, 255, 12);

  Green = new Button(1205, 64, 50, 30);
  Green.Color(255, 255, 255);

  Blueup = new Button(1260, 64, 40, 15);
  Blueup.Color(50, 50, 255);
  Blueup.Stroke(200, 200, 200, 1);
  Blueup.Text("▲", 255, 255, 255, 12);

  Bluedo = new Button(1260, 79, 40, 15);
  Bluedo.Color(50, 50, 255);
  Bluedo.Stroke(200, 200, 200, 1);
  Bluedo.Text("▼", 255, 255, 255, 12);

  Blue = new Button(1305, 64, 50, 30);
  Blue.Color(255, 255, 255);
  
  Black = new Button(1060,110,45,25);
  Black.Color(0,0,0);
  
  White = new Button(1110,110,45,25);
  White.Color(255,255,255);
  White.Stroke(200,200,200,1);
  
  InitializeCustomButtons();
}

//----------------------------------------------------------------------------------------

void drawColorButtons() {
  Color.Color(red,green,blue);
  Color.Draw();
  Redup.Draw();
  Reddo.Draw();
  Red.Draw();
  Greenup.Draw();
  Greendo.Draw();
  Green.Draw();
  Blueup.Draw();
  Bluedo.Draw();
  Blue.Draw();
  Black.Draw();
  White.Draw();
  
  Red.Num(red, 255, 50, 50, 20);
  Green.Num(green, 50, 255, 50, 20);  
  Blue.Num(blue, 50, 50, 255, 20);
  
  if(red < 1)   red = 0;
  if(red>254)   red = 255;
  if(blue< 1)   blue = 0;
  if(blue>254)  blue = 255;
  if(green< 1)  green = 0;
  if(green>254) green = 255;
  
  if(Redup.mousePressed()) red++;
  if(Reddo.mousePressed()) red--;
  
  if(Greenup.mousePressed()) green++;
  if(Greendo.mousePressed()) green--;
  
  if(Blueup.mousePressed()) blue++;
  if(Bluedo.mousePressed()) blue--;
  
  if(Black.mousePressed()) {
    red = 0;
    green = 0;
    blue = 0;
  }
  if(White.mousePressed()) {
    red = 255;
    green = 255;
    blue = 255;
  }
  
  drawCustomButtons();
}

//----------------------------------------------------------------------------------------

void InitializeCustomButtons() {
  Custom1 = new Button(1160,110,45,25);
  Custom1.Color(255,0,0);
  Custom1.Stroke(200,200,200,1);
  
  Custom2 = new Button(1210,110,45,25);
  Custom2.Color(0,255,0);
  Custom2.Stroke(200,200,200,1);
  
  Custom3 = new Button(1260,110,45,25);
  Custom3.Color(0,0,255);
  Custom3.Stroke(200,200,200,1);
  
  Custom4 = new Button(1310,110,45,25);
  Custom4.Color(255,100,150);
  Custom4.Stroke(200,200,200,1);
  
  Custom5 = new Button(1060,140,45,25);
  Custom5.Color(150,255,100);
  Custom5.Stroke(200,200,200,1);
  
  Custom6 = new Button(1110,140,45,25);
  Custom6.Color(100,150,255);
  Custom6.Stroke(200,200,200,1);
  
  Custom7 = new Button(1160,140,45,25);
  Custom7.Color(255,0,255);
  Custom7.Stroke(200,200,200,1);
  
  Custom8 = new Button(1210,140,45,25);
  Custom8.Color(255,255,0);
  Custom8.Stroke(200,200,200,1);
  
  Custom9 = new Button(1260,140,45,25);
  Custom9.Color(0,255,255);
  Custom9.Stroke(200,200,200,1);
  
  Custom0 = new Button(1310,140,45,25);
  Custom0.Color(255,125,0);
  Custom0.Stroke(200,200,200,1);
}

//----------------------------------------------------------------------------------------

void drawCustomButtons() {
  Custom1.Draw();
  Custom2.Draw();
  Custom3.Draw();
  Custom4.Draw();
  Custom5.Draw();
  Custom6.Draw();
  Custom7.Draw();
  Custom8.Draw();
  Custom9.Draw();
  Custom0.Draw();
  
  if(Custom1.mousePressed()) {
    red = Custom1.r;
    green = Custom1.g;
    blue = Custom1.b;
  }
  if(Custom2.mousePressed()) {
    red = Custom2.r;
    green = Custom2.g;
    blue = Custom2.b;
  }
  if(Custom3.mousePressed()) {
    red = Custom3.r;
    green = Custom3.g;
    blue = Custom3.b;
  }
  if(Custom4.mousePressed()) {
    red = Custom4.r;
    green = Custom4.g;
    blue = Custom4.b;
  }
  if(Custom5.mousePressed()) {
    red = Custom5.r;
    green = Custom5.g;
    blue = Custom5.b;
  }
  if(Custom6.mousePressed()) {
    red = Custom6.r;
    green = Custom6.g;
    blue = Custom6.b;
  }
  if(Custom7.mousePressed()) {
    red = Custom7.r;
    green = Custom7.g;
    blue = Custom7.b;
  }
  if(Custom8.mousePressed()) {
    red = Custom8.r;
    green = Custom8.g;
    blue = Custom8.b;
  }
  if(Custom9.mousePressed()) {
    red = Custom9.r;
    green = Custom9.g;
    blue = Custom9.b;
  }
  if(Custom0.mousePressed()) {
    red = Custom0.r;
    green = Custom0.g;
    blue = Custom0.b;
  }
}
