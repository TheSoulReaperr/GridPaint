
void mousePressed() {
  if (New.mouseOver())    newsize = true;
  if (newsize)            mouseNew();
  if (keyPad) if (nocheck.mouseOver()) keyPad = false;
  if (Grid.mouseOver())   mouseGrid();
  colorControl();
  mousecolorPalette();
  mouseCustom();
  if(Save.mouseOver())   saveImage();
}

//---------------------------------------------------------------------------------------------------------------------------------------

void mouseNew() {
  if (keyPad) {
    if (no1.mouseOver()) size = size*10 +1;
    if (no2.mouseOver()) size = size*10 +2;
    if (no3.mouseOver()) size = size*10 +3;
    if (no4.mouseOver()) size = size*10 +4;
    if (no5.mouseOver()) size = size*10 +5;
    if (no6.mouseOver()) size = size*10 +6;
    if (no7.mouseOver()) size = size*10 +7;
    if (no8.mouseOver()) size = size*10 +8;
    if (no9.mouseOver()) size = size*10 +9;
    if (no0.mouseOver()) size = size*10 +0;
    if (noclear.mouseOver()) {
      if (size >= 0 && size <= 9) size = 0;
      else size = size/10;
    }
  } else {
    if (AddSize.mouseOver())  size++;
    if (SubSize.mouseOver())  size--;
    if (CancelSize.mouseOver())  newsize = false;
    if (NewSize.mouseOver()) {
      if (size == 0) {
        error = true;
      } else {
        newsize = false;
        InitializeGrid();
        error = false;
      }
    }
    if (Size.mouseOver())     keyPad = true;
  }
}

void mouseGrid() {
  if (Grid.Text.equals("Grid ON")) {
    Grid.Text = "Grid OFF";
    for (Grid g : grid)  g.Stroke = false;
  } else {
    Grid.Text = "Grid ON";
    for (Grid g : grid)  g.Stroke = true;
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------

void colorControl() {
  if (Red.mouseOver()) {
    keyPad = true;
    redF = true;
  }
  if(Green.mouseOver()) {
    keyPad = true;
    greenF = true;
  }
  if(Blue.mouseOver()) {
    keyPad = true;
    blueF = true;
  }
  if(keyPad) {
    if(redF) {
      if (no1.mouseOver()) red = red*10 +1;
      if (no2.mouseOver()) red = red*10 +2;
      if (no3.mouseOver()) red = red*10 +3;
      if (no4.mouseOver()) red = red*10 +4;
      if (no5.mouseOver()) red = red*10 +5;
      if (no6.mouseOver()) red = red*10 +6;
      if (no7.mouseOver()) red = red*10 +7;
      if (no8.mouseOver()) red = red*10 +8;
      if (no9.mouseOver()) red = red*10 +9;
      if (no0.mouseOver()) red = red*10 +0;
      if (noclear.mouseOver()) {
        if (red >= 0 && red <= 9) red = 0;
        else red = red/10;
      }
    }
    if(greenF) {
      if (no1.mouseOver()) green = green*10 +1;
      if (no2.mouseOver()) green = green*10 +2;
      if (no3.mouseOver()) green = green*10 +3;
      if (no4.mouseOver()) green = green*10 +4;
      if (no5.mouseOver()) green = green*10 +5;
      if (no6.mouseOver()) green = green*10 +6;
      if (no7.mouseOver()) green = green*10 +7;
      if (no8.mouseOver()) green = green*10 +8;
      if (no9.mouseOver()) green = green*10 +9;
      if (no0.mouseOver()) green = green*10 +0;
      if (noclear.mouseOver()) {
        if (green >= 0 && green <= 9) green = 0;
        else green = green/10;
      }
    }
    if(blueF) {
      if (no1.mouseOver()) blue = blue*10 +1;
      if (no2.mouseOver()) blue = blue*10 +2;
      if (no3.mouseOver()) blue = blue*10 +3;
      if (no4.mouseOver()) blue = blue*10 +4;
      if (no5.mouseOver()) blue = blue*10 +5;
      if (no6.mouseOver()) blue = blue*10 +6;
      if (no7.mouseOver()) blue = blue*10 +7;
      if (no8.mouseOver()) blue = blue*10 +8;
      if (no9.mouseOver()) blue = blue*10 +9;
      if (no0.mouseOver()) blue = blue*10 +0;
      if (noclear.mouseOver()) {
        if (blue >= 0 && blue <= 9) blue = 0;
        else blue = blue/10;
      }
    }
    if(nocheck.mouseOver()) {
      redF = false;
      greenF = false;
      blueF = false;
    }
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------

void mousecolorPalette() {
  if(Black.mouseOver()) {
    red = 0;
    green = 0;
    blue =0;
  }
  if(White.mouseOver()) {
    red = 255;
    green = 255;
    blue = 255;
  }
  if(RedB.mouseOver()) {
    red =255;
    green =0;
    blue =0;
  }
  if(GreenB.mouseOver()) {
    red =0;
    green =255;
    blue = 0;
  }
  if(BlueB.mouseOver()) {
    red =0;
    green =0;
    blue = 255;
  }
}

void mouseCustom() {
  if(Custom1.mouseOver()) {
    red = Custom1.r;
    green = Custom1.g;
    blue = Custom1.b;
  }
  if(Custom2.mouseOver()) {
    red = Custom2.r;
    green = Custom2.g;
    blue = Custom2.b;
  }
  if(Custom3.mouseOver()) {
    red = Custom3.r;
    green = Custom3.g;
    blue = Custom3.b;
  }
  if(Custom4.mouseOver()) {
    red = Custom4.r;
    green = Custom4.g;
    blue = Custom4.b;
  }
  if(Custom5.mouseOver()) {
    red = Custom5.r;
    green = Custom5.g;
    blue = Custom5.b;
  }
  if(Custom6.mouseOver()) {
    red = Custom6.r;
    green = Custom6.g;
    blue = Custom6.b;
  }
  if(Custom7.mouseOver()) {
    red = Custom7.r;
    green = Custom7.g;
    blue = Custom7.b;
  }
  if(Custom8.mouseOver()) {
    red = Custom8.r;
    green = Custom8.g;
    blue = Custom8.b;
  }
  if(Custom9.mouseOver()) {
    red = Custom9.r;
    green = Custom9.g;
    blue = Custom9.b;
  }
  if(Custom0.mouseOver()) {
    red = Custom0.r;
    green = Custom0.g;
    blue = Custom0.b;
  }
}
