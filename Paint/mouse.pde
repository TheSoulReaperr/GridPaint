
void mousePressed() {
  if(New.mouseOver())         newsize = true;
  if(newsize)                 mouseNew();
}

void mouseNew() {
  if(AddSize.mouseOver())  size++;
  if(SubSize.mouseOver())  size--;
  if(CancelSize.mouseOver())  newsize = false;
  if(NewSize.mouseOver()) {
    newsize = false;
    InitializeGrid();
  }
}
