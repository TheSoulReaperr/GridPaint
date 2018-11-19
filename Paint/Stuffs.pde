
void drawStuffs() {
  noFill();
  stroke(0);
  strokeWeight(4);
  rect(width-height+8,8,height-14,height-14);
  noStroke();
  fill(50,50,70);
  rect(width-4,0,10,height);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(15);
  text(mouseX+":"+mouseY+"\n"+(width/(float(mouseX)+0.01))+":"+(height/(float(mouseY)+0.01)),800,200);
}
