Button New;
Button AddSize;
Button SubSize;
Button Size;
Button Create;

float x;
float y;
float s;
int size = 10;
int red = 0;
int green = 0;
int blue = 0;

void setup() {
  fullScreen();
  InitializeGrid();
  New = new Button(25,20,200,60);
  New.Color(55,55,65);
  New.Stroke(255,255,255,3);
  New.Edge(10,10,10,10);
  New.Text("New",255,255,255,35);
  
  SubSize = new Button(width/3.43,height/4.3,width/17.0,width/17.0);
  SubSize.Ellipse(true);
  SubSize.Color(255,255,255);
  SubSize.Stroke(255,255,255,1);
  SubSize.Text("-",0,0,0,60);
  
  Size = new Button(width/2.7,height/4.3,width/3.85,height/9.6);
  Size.Color(255,255,255);
  Size.Edge(5,5,5,5);
  Size.Num(size,0,0,0,60);
  
  AddSize = new Button(width/1.54,height/4.3,width/17,width/17);
  AddSize.Ellipse(true);
  AddSize.Color(255,255,255);
  AddSize.Stroke(255,255,255,1);
  AddSize.Text("+",0,0,0,60);
  
  Create = new Button(width/2-width/12,height/2.6,width/6,height/12);
  Create.Color(200,200,200);
  Create.Stroke(255,255,255,3);
  //Create.Text("
}

void draw() {
  background(50, 50, 70);
  drawGrid();
  New.Draw();
  drawNew();
  drawStuffs();
}

void drawNew() {
  noStroke();
  fill(0,180);
  rect(0,0,width,height);
  fill(50,50,60);
  strokeWeight(2);
  stroke(255,255,255);
  rectMode(CENTER);
  rect(width/2,height/3,width/2.1,height/3.1,10,10,10,10);
  rectMode(CORNER);
  AddSize.Draw();
  Size.Draw();
  Size.no = size;
  SubSize.Draw();
  Create.Draw();
}
