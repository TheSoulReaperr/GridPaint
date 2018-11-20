
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
    if (mouseX >= x && mouseX <= x+s && mouseY >=y && mouseY <=y+s)  return true;
    else return false;
  }

  boolean mousePressed() {
    if (mouseOver() && mousePressed) return true;
    else return false;
  }

  void Draw() {
    if (mousePressed() && !newsize && !keyPad) c = color(red, green, blue);
    fill(c);
    strokeWeight(1);
    if (Stroke) stroke(0);
    else stroke(c);
    rect(x, y, s, s);
  }
}
