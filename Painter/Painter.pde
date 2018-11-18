float x;
float y;
float s;
int red = 0;
int green = 0;
int blue = 0;
int size = 1;

void setup() {
  fullScreen();
  InitializeColorButtons();
  InitializeGrid();
  InitializeSizeButtons();
}

void draw() {
  background(255);
  drawGrid();
  drawColorButtons();
  outline();
}
