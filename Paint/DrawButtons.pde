
void drawButtons() {
  New.Draw();
  Fill.Draw();
  Grid.Draw();
  drawColorButtons();
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
