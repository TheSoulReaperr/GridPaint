Button New;
Button Grid;
Button Fill;
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

void InitButtons() {
  MainButtons();
  InitNewButtons();
  InitKeyPad();
  InitColorButtons();
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
