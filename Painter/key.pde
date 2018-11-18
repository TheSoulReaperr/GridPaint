
void keyPressed() {
  setCustomColors();
  getCustomColors();
}

void setCustomColors() {
  if(key == '!') {
    Custom1.r = red;
    Custom1.g = green;
    Custom1.b = blue;
  }
  if(key == '@') {
    Custom2.r = red;
    Custom2.g = green;
    Custom2.b = blue;
  }
  if(key == '#') {
    Custom3.r = red;
    Custom3.g = green;
    Custom3.b = blue;
  }
  if(key == '$') {
    Custom4.r = red;
    Custom4.g = green;
    Custom4.b = blue;
  }
  if(key == '%') {
    Custom5.r = red;
    Custom5.g = green;
    Custom5.b = blue;
  }
  if(key == '^') {
    Custom6.r = red;
    Custom6.g = green;
    Custom6.b = blue;
  }
  if(key == '&') {
    Custom7.r = red;
    Custom7.g = green;
    Custom7.b = blue;
  }
  if(key == '*') {
    Custom8.r = red;
    Custom8.g = green;
    Custom8.b = blue;
  }
  if(key == '(') {
    Custom9.r = red;
    Custom9.g = green;
    Custom9.b = blue;
  }
  if(key == ')') {
    Custom0.r = red;
    Custom0.g = green;
    Custom0.b = blue;
  }
}

void getCustomColors() {
  if(key == '`') {
    red = 255;
    green = 255;
    blue = 255;
  }
  if(key == '~') {
    red = 0;
    green =0;
    blue =0;
  }
  if(key == '1') {
    red = Custom1.r;
    green = Custom1.g;
    blue = Custom1.b;
  }
  if(key == '2') {
    red = Custom2.r;
    green = Custom2.g;
    blue = Custom2.b;
  }
  if(key == '3') {
    red = Custom3.r;
    green = Custom3.g;
    blue = Custom3.b;
  }
  if(key == '4') {
    red = Custom4.r;
    green = Custom4.g;
    blue = Custom4.b;
  }
  if(key == '5') {
    red = Custom5.r;
    green = Custom5.g;
    blue = Custom5.b;
  }
  if(key == '6') {
    red = Custom6.r;
    green = Custom6.g;
    blue = Custom6.b;
  }
  if(key == '7') {
    red = Custom7.r;
    green = Custom7.g;
    blue = Custom7.b;
  }
  if(key == '8') {
    red = Custom8.r;
    green = Custom8.g;
    blue = Custom8.b;
  }
  if(key == '9') {
    red = Custom9.r;
    green = Custom9.g;
    blue = Custom9.b;
  }
  if(key == '0') {
    red = Custom0.r;
    green = Custom0.g;
    blue = Custom0.b;
  }
}
