boolean newsize = false;
boolean keyPad = false;
boolean error = false;
boolean fill = false;
boolean settings = false;
boolean redF = false;
boolean greenF = false;
boolean blueF = false;
PGraphics image;
PFont Font;
float x;
float y;
float s;
int size  = 16;
int red   = 0;
int green = 0;
int blue  = 0;

void setup() {
  fullScreen();
  Font =  createFont("OCR A Std", 100);
  textFont(Font);
  image = createGraphics(height+10,height);
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
