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

boolean newsize = true;
boolean keyPad = true;
float x;
float y;
float s;
int size = 16;
int red = 0;
int green = 0;
int blue = 0;

void setup() {
  fullScreen();
  InitializeGrid();
  InitButtons();
}

void draw() {
  background(50, 50, 70);
  drawGrid();
  drawStuffs();
  drawButtons();
}

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
  no6.Color(255, 255, 255);
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

void drawKeyPad() {
  fill(0);
  stroke(255);
  strokeWeight(3);
  rectMode(CORNER);
  rect(width/1.34, height/2.15, width/4.1, height/1.94);
  no1.Draw();
  no2.Draw();
  no3.Draw();
  no4.Draw();
  no5.Draw();
  no6.Draw();
  no7.Draw();
  no8.Draw();
  no9.Draw();
  no0.Draw();
  nocheck.Draw();
  noclear.Draw();
}
