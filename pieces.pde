class Pieces {
  float x;
  float y;
  float r;

  boolean playerOne;
  boolean selected;

  Pieces (float xx, float yy, boolean p1 ) {
    x = xx;
    y = yy;
    r =size/2;
    playerOne = p1;
    selected = false;
  }

  void draw() {
    if (playerOne) {
      fill(255, 0, 0);
    } else {
      fill(0, 255, 0);
    }
    stroke(1);
    circle(x, y, r*2);
  }

  void move (float xx, float yy) { //Parameters are only live within the command !IMPORTANT
    x = xx;
    y = yy;
  }

  boolean isClicked () {

    if ( mousePressed && dist(x, y, mouseX, mouseY) <= r) {
      selected = true;
      return true;
    }

    return false;
  }

  void moveDown () {
    y = y +10;
}
}
