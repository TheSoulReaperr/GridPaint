Grid grid[];
Button SizeAdd;
Button SizeSub;
Button Size;
Button New;
Button Grid;

void InitializeGrid() {
  s=750/size;
  x=305;
  y=9;
  grid = new Grid[size*size+1];
  for (int i=0; i<grid.length; i++) {
    grid[i] = new Grid(x, y, s);
    x+=s;
    if (i%size == 0 && i!=0) {
      x=305;
      y+=s;
    }
  }
}

void InitializeSizeButtons() {
  SizeAdd = new Button(10, 9, 30, 40);
  SizeAdd.Color(255, 255, 255);
  SizeAdd.Stroke(0, 0, 0, 2);
  SizeAdd.Edge(5, 5, 5, 5);
  SizeAdd.Text("▲", 0, 0, 0, 18);

  Size = new Button(45, 9, 50, 40);
  Size.Color(255, 255, 255);
  Size.Stroke(0, 0, 0, 2);
  Size.Edge(5, 5, 5, 5);
  Size.Num(size, 0, 0, 0, 20);

  SizeSub = new Button(100, 9, 30, 40);
  SizeSub.Color(255, 255, 255);
  SizeSub.Stroke(0, 0, 0, 2);
  SizeSub.Edge(5, 5, 5, 5);
  SizeSub.Text("▼", 0, 0, 0, 18);
  
  New = new Button(135,9,110,40);
  New.Color(255,255,255);
  New.Stroke(0,0,0,2);
  New.Edge(5,5,5,5);
  New.Text("New",0,0,0,18);
  
  Grid = new Button(250,9,40,40);
  Grid.Color(255,255,255);
  Grid.Stroke(0,0,0,2);
  Grid.Edge(5,5,5,5);
  Grid.Text("╬",0,0,0,25);
}

void drawGrid() {
  for (int i=0; i<grid.length; i++) {
    grid[i].Draw();
    if (i==size-1)
      i++;
  }
  if (size <2) size =1;
  SizeAdd.Draw();
  Size.Draw();
  Size.no = size;
  SizeSub.Draw();
  New.Draw();
  Grid.Draw();
  if(grid[1].Stroke) {
    Grid.Text = "╬";
  } else Grid.Text ="";
}
