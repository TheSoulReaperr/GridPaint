
void outline() {
  stroke(0);
  strokeWeight(1);
  noFill();
  rect(305, 9, 750, 750);
  stroke(150,150,150);
  line(1060,102,1355,102);
  line(1060,172,1355,172);
  line(10,57,290,57);
  fill(0);
  textSize(10);
  textAlign(CENTER,CENTER);
  text(mouseX+"  "+mouseY, 1300, 200);
}
