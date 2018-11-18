
class Button {
  boolean Number = false;
  String Text = "";
  float x;
  float y;
  float w;
  float h;
  int sSize;
  int tSize = 1;
  int e1;
  int e2;
  int e3;
  int e4;
  int no;
  int sr;
  int sg;
  int sb;
  int tr;
  int tg;
  int tb;
  int r;
  int g;
  int b;
  
  Button(float _x,float _y,float _w,float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
  
  void Color(int _r,int _g,int _b) {
    r = _r;
    g = _g;
    b = _b;
  }
  
  void Stroke(int _r,int _g,int _b,int _s) {
    sr = _r;
    sg = _g;
    sb = _b;
    sSize = _s;
  }
  
  void Text(String _t,int _r,int _g,int _b,int _s) {
    Number = false;
    Text = _t;
    tr = _r;
    tg = _g;
    tb = _b;
    tSize = _s;
  }
  
  void Num(int _n,int _r,int _g,int _b,int _s) {
    Number = true;
    no = _n;
    tr = _r;
    tg = _g;
    tb = _b;
    tSize = _s;
  }
  
  void Edge(int a,int b, int c, int d) {
    e1 = a;
    e2 = b;
    e3 = c;
    e4 = d;
  }
  
  boolean mouseOver() {
    if(mouseX > x && mouseX < x+w && mouseY >y && mouseY <y+h) {
      return true;
    } else return false;
  }
  
  boolean mousePressed() {
    if(mouseOver() && mousePressed) return true;
    else return false;
  }
  
  void Draw() {
    rectMode(CORNER);
    fill(r,g,b);
    stroke(sr,sg,sb);
    strokeWeight(sSize);
    rect(x,y,w,h,e1,e2,e3,e4);
    fill(tr,tg,tb);
    textSize(tSize);
    textAlign(CENTER,CENTER);
    if(Number)  text(no,x+w/2,y+h/2-h/10);
    else  text(Text,x+w/2,y+h/2-h/20);
  }
}
