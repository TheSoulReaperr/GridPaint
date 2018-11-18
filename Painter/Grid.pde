
class Grid {
  boolean Stroke = true;
  color c = 255;
  float x;
  float y;
  float s;
  
  Grid(float _x, float _y, float _s) {
    x = _x;
    y = _y;
    s = _s;
  }
  
  boolean mouseOver() {
    if(mouseX > x && mouseX < x+s && mouseY >y && mouseY <y+s)  return true;
    else return false;
  }
  
  boolean mousePressed() {
    if(mouseOver() && mousePressed) return true;
    else return false;
  }
  
  void Draw() {
    if(mousePressed()) c = color(red,green,blue);
    fill(c);
    stroke(0);
    if(Stroke) strokeWeight(1);
    else noStroke();
    rect(x,y,s,s);
  }
}
