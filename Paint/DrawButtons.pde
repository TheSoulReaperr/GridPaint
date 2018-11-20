
void drawButtons() {
  New.Draw();
  if(newsize)  drawNew();
  if(keyPad)   drawKeyPad();
}

void drawNew() {
  if(size<1) size =1;
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
