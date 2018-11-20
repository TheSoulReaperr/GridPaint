Button New;
Button AddSize;
Button SubSize;
Button Size;
Button NewSize;
Button CancelSize;

void InitButtons() {
  InitNewButtons();
  InitKeyPad();
}

void InitNewButtons() {
  New = new Button(width/54.4,height/38.4,width/6.8,height/12.8);
  New.Color(55,55,65);
  New.Stroke(255,255,255,3);
  New.Edge(10,10,10,10);
  New.Text("New",255,255,255,35);
  
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
