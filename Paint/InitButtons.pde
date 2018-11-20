Button New;
Button Grid;
Button Fill;
Button Settings;
Button Save;
//-----------------
Button AddSize;
Button SubSize;
Button Size;
Button NewSize;
Button CancelSize;
//-----------------
Button no1;
Button no2;
Button no3;
Button no4;
Button no5;
Button no6;
Button no7;
Button no8;
Button no9;
Button no0;
Button nocheck;
Button noclear;
//----------------
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
Button White;
Button Black;
Button RedB;
Button GreenB;
Button BlueB;
//---------------
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

void InitButtons() {
  MainButtons();
  InitNewButtons();
  InitKeyPad();
  InitColorButtons();
  InitcolorPalette();
  InitCustomButton();
}

void MainButtons() {
  New = new Button(width/54.4,height/38.4,width/8,height/12.8);
  New.Color(55,55,65);
  New.Stroke(255,255,255,3);
  New.Edge(10,10,10,10);
  New.Text("New",255,255,255,30);
  
  Fill = new Button(width/6.32,height/38.4,width/8,height/12.8);
  Fill.Color(55,55,65);
  Fill.Stroke(255,255,255,3);
  Fill.Edge(10,10,10,10);
  Fill.Text("Fill",255,255,255,30);
  
  Grid = new Button(width/3.36,height/38.4,width/8,height/12.8);
  Grid.Color(55,55,65);
  Grid.Stroke(255,255,255,3);
  Grid.Edge(10,10,10,10);
  Grid.Text("Grid ON",255,255,255,25);
  
  Settings = new Button(width/54.4,height/1.11,width/9.0,height/13.0);
  Settings.Color(55,55,65);
  Settings.Stroke(255,255,255,3);
  Settings.Edge(10,10,10,10);
  Settings.Text("Settings",255,255,255,23);
  
  Save = new Button(width/3.25, height/1.11, width/9.0, height/13.0);
  Save.Color(55,55,65);
  Save.Stroke(255,255,255,3);
  Save.Edge(10,10,10,10);
  Save.Text("Save",255,255,255,30);
}

//---------------------------------------------------------------------------------------------------------------------------------------

void InitNewButtons() {
  SubSize = new Button(width/3.43,height/4.3,width*height/13056,width*height/13056);
  SubSize.Ellipse(true);
  SubSize.Color(255,255,255);
  SubSize.Stroke(255,255,255,1);
  SubSize.Text("-",0,0,0,80);
  
  Size = new Button(width/2.7,height/4.3,width/3.85,height/9.6);
  Size.Color(255,255,255);
  Size.Edge(5,5,5,5);
  Size.Num(size,0,0,0,60);
  
  AddSize = new Button(width/1.54,height/4.3,width*height/13056,width*height/13056);
  AddSize.Ellipse(true);
  AddSize.Color(255,255,255);
  AddSize.Stroke(255,255,255,1);
  AddSize.Text("+",0,0,0,60);
  
  NewSize = new Button(width/2.9,height/2.6,width/8,height/12);
  NewSize.Color(200,200,200);
  NewSize.Stroke(255,255,255,3);
  NewSize.Edge(10,10,10,10);
  NewSize.Text("New",0,0,0,35);
  
  CancelSize = new Button(width/1.9,height/2.6,width/8,height/12);
  CancelSize.Color(200,200,200);
  CancelSize.Stroke(255,255,255,3);
  CancelSize.Edge(10,10,10,10);
  CancelSize.Text("Cancel",0,0,0,35);
}

//---------------------------------------------------------------------------------------------------------------------------------------s

void InitKeyPad() {
  no1 = new Button(width/1.3, height/2, width*height/16408, width*height/16408);
  no1.Ellipse(true);
  no1.Color(255, 255, 255);
  no1.Text("1",0,0,0,35);

  no2 = new Button(width/1.1875, height/2, width*height/16408, width*height/16408);
  no2.Ellipse(true);
  no2.Color(255, 255, 255);
  no2.Text("2",0,0,0,35);

  no3 = new Button(width/1.0925, height/2, width*height/16408, width*height/16408);
  no3.Ellipse(true);
  no3.Color(255, 255, 255);
  no3.Text("3",0,0,0,35);

  no4 = new Button(width/1.3, height/1.6, width*height/16408, width*height/16408);
  no4.Ellipse(true);
  no4.Color(255, 255, 255);
  no4.Text("4",0,0,0,35);
  
  no5 = new Button(width/1.1875, height/1.6, width*height/16408, width*height/16408);
  no5.Ellipse(true);
  no5.Color(255, 255, 255);
  no5.Text("5",0,0,0,35);
  
  no6 = new Button(width/1.0925, height/1.6, width*height/16408, width*height/16408);
  no6.Ellipse(true);
  no6.Color(255,255, 255);
  no6.Text("6",0,0,0,35);

  no7 = new Button(width/1.3, height/1.35, width*height/16408, width*height/16408);
  no7.Ellipse(true);
  no7.Color(255, 255, 255);
  no7.Text("7",0,0,0,35);
  
  no8 = new Button(width/1.1875, height/1.35, width*height/16408, width*height/16408);
  no8.Ellipse(true);
  no8.Color(255, 255, 255);
  no8.Text("8",0,0,0,35);
  
  no9 = new Button(width/1.0925, height/1.35, width*height/16408, width*height/16408);
  no9.Ellipse(true);
  no9.Color(255, 255, 255);
  no9.Text("9",0,0,0,35);

  no0 = new Button(width/1.1875, height/1.17, width*height/16408, width*height/16408);
  no0.Ellipse(true);
  no0.Color(255, 255, 255);
  no0.Text("0",0,0,0,35);
  
  nocheck = new Button(width/1.3, height/1.17, width*height/16408, width*height/16408);
  nocheck.Ellipse(true);
  nocheck.Color(100,255,150);
  nocheck.Text("√",0,0,0,35);
  
  noclear = new Button(width/1.0925, height/1.17, width*height/16408, width*height/16408);
  noclear.Ellipse(true);
  noclear.Color(255,150,100);
  noclear.Text("◄",0,0,0,35);
}

//---------------------------------------------------------------------------------------------------------------------------------------s

void InitColorButtons() {
  Color = new Button(width/3.36,height/7.31,width/8.0,height/3.9);
  Color.Stroke(255,255,255,1);
  Color.Color(red,green,blue);
  
  Reddo = new Button(width/54.4,height/7.31,width/15.0,height/13.0);
  Reddo.Color(255,80,100);
  Reddo.Stroke(255,80,100,1);
  Reddo.Text("<",255,255,255,45);
  
  Red = new Button(width/11,height/7.31,width/8,height/13.0);
  Red.Color(255,255,255);
  Red.Stroke(200,200,200,1);
  Red.Num(red,255,80,100,35);
  
  Redup = new Button(width/3.46-width/15.0,height/7.31,width/15.0,height/13.0);
  Redup.Color(255,80,100);
  Redup.Stroke(255,80,100,1);
  Redup.Text(">",255,255,255,45);
  
  Greendo = new Button(width/54.4,height/4.4,width/15.0,height/13.0);
  Greendo.Color(80,255,100);
  Greendo.Stroke(80,255,100,1);
  Greendo.Text("<",255,255,255,45);
  
  Green = new Button(width/11,height/4.4,width/8,height/13.0);
  Green.Color(255,255,255);
  Green.Stroke(200,200,200,1);
  Green.Num(green,80,255,100,35);
  
  Greenup = new Button(width/3.46-width/15.0,height/4.4,width/15.0,height/13.0);
  Greenup.Color(80,255,100);
  Greenup.Stroke(80,255,100,1);
  Greenup.Text(">",255,255,255,45);
  
  Bluedo = new Button(width/54.4,height/3.17,width/15.0,height/13.0);
  Bluedo.Color(80,100,255);
  Bluedo.Stroke(80,100,255,1);
  Bluedo.Text("<",255,255,255,45);
  
  Blue = new Button(width/11,height/3.17,width/8,height/13.0);
  Blue.Color(255,255,255);
  Blue.Stroke(200,200,200,1);
  Blue.Num(blue,80,100,255,35);
  
  Blueup = new Button(width/3.46-width/15.0,height/3.17,width/15.0,height/13.0);
  Blueup.Color(80,100,255);
  Blueup.Stroke(80,100,255,1);
  Blueup.Text(">",255,255,255,45);
}

void InitcolorPalette() {
  Black = new Button(width/54.4,height/2.36,width/13.5,height/10);
  Black.Color(0,0,0);
  Black.Stroke(0,0,0,1);
  
  White = new Button(width/9.92,height/2.36,width/13.5,height/10);
  White.Color(255,255,255);
  White.Stroke(255,255,255,1);
  
  RedB = new Button(width/5.45,height/2.36,width/13.5,height/10);
  RedB.Color(255,0,0);
  RedB.Stroke(255,0,0,1);
  
  GreenB = new Button(width/3.75,height/2.36,width/13.5,height/10);
  GreenB.Color(0,255,0);
  GreenB.Stroke(0,255,0,1);
  
  BlueB = new Button(width/2.87,height/2.36,width/13.5,height/10);
  BlueB.Color(0,0,255);
  BlueB.Stroke(0,0,255,1);
}


void InitCustomButton() {
  Custom1 = new Button(width/54.4,height/1.79,width/13.5,height/10);
  Custom1.Color(255,255,0);
  Custom1.Stroke(50,50,70,1);
  
  Custom2 = new Button(width/9.92,height/1.79,width/13.5,height/10);
  Custom2.Color(255,125,0);
  Custom2.Stroke(50,50,70,1);
  
  Custom3 = new Button(width/5.45,height/1.79,width/13.5,height/10);
  Custom3.Color(255,0,255);
  Custom3.Stroke(50,50,70,1);
  
  Custom4 = new Button(width/3.75,height/1.79,width/13.5,height/10);
  Custom4.Color(0,255,255);
  Custom4.Stroke(50,50,70,1);
  
  Custom5 = new Button(width/2.87,height/1.79,width/13.5,height/10);
  Custom5.Color(125,125,125);
  Custom5.Stroke(50,50,70,1);
  
  Custom6 = new Button(width/54.4,height/1.48,width/13.5,height/10);
  Custom6.Color(112,146,190);
  Custom6.Stroke(50,50,70,1);
  
  Custom7 = new Button(width/9.92,height/1.48,width/13.5,height/10);
  Custom7.Color(185,125,87);
  Custom7.Stroke(50,50,70,1);
  
  Custom8 = new Button(width/5.45,height/1.48,width/13.5,height/10);
  Custom8.Color(67,72,204);
  Custom8.Stroke(50,50,70,1);
  
  Custom9 = new Button(width/3.75,height/1.48,width/13.5,height/10);
  Custom9.Color(255,175,201);
  Custom9.Stroke(50,50,70,1);
  
  Custom0 = new Button(width/2.87,height/1.48,width/13.5,height/10);
  Custom0.Color(64,128,0);
  Custom0.Stroke(50,50,70,1);
}
