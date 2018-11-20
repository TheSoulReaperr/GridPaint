
void mousePressed() {
  if (New.mouseOver())    newsize = true;
  if (newsize)            mouseNew();
  if (keyPad) if (nocheck.mouseOver()) keyPad = false;
  if (Grid.mouseOver())   mouseGrid();
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
