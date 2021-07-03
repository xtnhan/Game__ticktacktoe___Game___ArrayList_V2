class cCircle {//Use for collision detection

  float x;
  float y;
  float r;



  cCircle (float xx, float yy) {
    x = xx;
    y = yy;
    r = size;
  }


  void draw () {
    noFill();
    //fill(0,0,0);
    circle(x, y, size);
  }
}
