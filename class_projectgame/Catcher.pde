class Catcher {
  PVector l;
  int r;

  Catcher() {
    r=200;
  }
  void load() {
    l= new PVector(mouseX, height-200);
    ellipse(l.x, l.y, r, r);
  }
}

