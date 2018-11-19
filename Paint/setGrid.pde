Grid grid[];

void InitializeGrid() {
  s=(height-10)/size;
  x=width-height+10;
  y=10;
  grid = new Grid[size*size+1];
  for (int i=0; i<grid.length; i++) {
    grid[i] = new Grid(x, y, s);
    x+=s;
    if (i%size == 0 && i!=0) {
      x=width-height+10;
      y+=s;
    }
  }
}

void drawGrid() {
  for(int i=0;i<grid.length;i++) {
    grid[i].Draw();
  }
}
