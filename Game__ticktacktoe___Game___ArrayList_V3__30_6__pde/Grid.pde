cCircle c = new cCircle (100, 100);

boolean isEndturn;
boolean isClicked;
boolean isHover;
float gap = 0;

class Grid {

  float x;
  float y;
  float r;


  boolean isPlayer1Turn;
  boolean isPlayer2Turn;

  Grid (float xx, float yy, float rr) {
    x = xx;
    y = yy;
    r = rr;
    isPlayer1Turn = false;
    isPlayer2Turn = false;

    isHover = false;
    isClicked = false;
    isEndturn = false;
  }

  void draw () {
    //println("Is Player 1's turn??? " + isPlayer1Turn + "  ||||  " + "Is Player 2's turn??? " + isPlayer2Turn+ "  ||||  " + "Is clicked? " + isClicked + "  ||||  " + "Is Hovered? " + isHover);

    rectMode(CENTER);
    fill(255, 255, 255);
    rect(x, y, r, r);
     if (isPlayer1Turn) {
      //drawp1 ();
            pieces.add (new Pieces (x, y, true) );

    }
    if (isPlayer2Turn) {
      //drawp2 ();
            pieces.add (new Pieces (x, y, false) );

    }
  }



  void update (cCircle cc) {
    if (dist(x, y, mouseX, mouseY) >= size/2) {
      isClicked = false;
    }

    if (mousePressed == false && mouseX >= (x + gap - size/2) && mouseX <= (x - gap + size/2) && mouseY >= (y + gap - size/2) && mouseY <= (y - gap + size/2) ) {//mousePressed == false to lock mouse dragging
      isHover = true;

      if (mouseButton == LEFT) {
        if (isEndturn) {

          isPlayer1Turn = false;
          isPlayer2Turn = true;
        } else {

          isPlayer1Turn = true;
          isPlayer2Turn = false;
        }
        isClicked = true;
        cc.x =x;
        cc.y = y;
        cc.draw();
      }
    } 

    if (mousePressed == false && mouseX >= (cc.x + gap - size/2) && mouseX <= (cc.x - gap + size/2) && mouseY >= (cc.y + gap - size/2) && mouseY <= (cc.y - gap + size/2) ) {

      isHover = false; //When the circle appears, it will check hover or not
    }
  }//END update();





}
