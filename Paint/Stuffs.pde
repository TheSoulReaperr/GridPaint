
void drawStuffs() {
  noFill();
  stroke(0);
  strokeWeight(5);
  rect(width-height+8, 8, height-20, height-20);
  noStroke();
  fill(50, 50, 70);
  rect(width-9, 0, 10, height);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text(mouseX+":"+mouseY+"\n"+(width/(float(mouseX)+0.01))+":"+(height/(float(mouseY)+0.01)), 800, 50);
}

void drawTexts() {
  if (error) {
    if (newsize && size ==0) {
      fill(255, 100, 150);
      textSize(20);
      textAlign(CENTER, CENTER);
      text("Size cannot be 0", width/2, height/2.8);
    }
  }
}

void saveImage() {
  image.beginDraw();
  for (int i=0; i<grid.length; i++) {
    image.stroke(grid[i].c);
    image.fill(grid[i].c);
    image.rect(grid[i].x-(width-height-20), grid[i].y,grid[i].s,grid[i].s);
  }
  image.save("BitImage"+year()+""+month()+""+day()+""+hour()+""+minute()+""+second()+".png");
  image.endDraw();
}
