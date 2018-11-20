
void drawButtons() {
  New.Draw();
  Fill.Draw();
  Grid.Draw();
  drawColorButtons();
  drawcolorPalette();
  drawCustomButtons();
  Settings.Draw();
  Save.Draw();
  if(grid[1].Stroke) Grid.Text = "Grid ON";
  else               Grid.Text = "Grid OFF"; 
  if(newsize)  drawNew();
  if(keyPad)   drawKeyPad();
}

//---------------------------------------------------------------------------------------------------------------------------------------

void drawNew() {
  if(size<0) size =0;
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
  Size.no = size;
  Size.Draw();
  SubSize.Draw();
  NewSize.Draw();
  CancelSize.Draw();
}

//---------------------------------------------------------------------------------------------------------------------------------------

void drawKeyPad() {
  fill(0);
  stroke(100,150,255);
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

//---------------------------------------------------------------------------------------------------------------------------------------

void drawColorButtons() {
  Color.Draw();
  Color.Color(red,green,blue);
  
  if(red < 1)  red = 0;
  if(blue <1)  blue= 0;
  if(green<1)  green=0;
  if(red > 254)  red = 255;
  if(blue >254)  blue =255;
  if(green>254)  green=255;
  
  Redup.Draw();
  Red.Draw();
  Red.no = red;
  Reddo.Draw();
  Greenup.Draw();
  Green.Draw();
  Green.no = green;
  Greendo.Draw();
  Blueup.Draw();
  Blue.Draw();
  Blue.no =blue;
  Bluedo.Draw();
  
  if(Redup.mousePressed()) red++;
  if(Reddo.mousePressed()) red--;  
  if(Greenup.mousePressed()) green++;
  if(Greendo.mousePressed()) green--;  
  if(Blueup.mousePressed()) blue++;
  if(Bluedo.mousePressed()) blue--;
}

void drawcolorPalette() {
  Black.Draw();
  White.Draw();
  RedB.Draw();
  GreenB.Draw();
  BlueB.Draw();
}


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
}
