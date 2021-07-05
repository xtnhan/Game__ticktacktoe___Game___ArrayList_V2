
ArrayList<Grid> grids = new ArrayList<Grid>();
ArrayList<Pieces> pieces = new ArrayList<Pieces> ();



boolean down = false;

float size = 100;
float i; //number of clicks



void setup () {
  rectMode(CENTER);

  size (1000, 1000);
  //background(255, 255, 255);

//new update

  for (float y = 0; y <= height; y+=size) {
    for (float x = 0; x <= width; x+= size) {
      grids.add (new Grid (x, y, size));
    }
  }
}


void draw () {

  for (Grid g : grids) {
    g.update(c);
    g.drawpiece();
  }
  //if (isEndturn) {
  //  fill(0, 0, 0);
  //  textSize(30);
  //  textAlign(CENTER);
  //  text ("PLAYER 2's TURN!", width/2, 100);
  //} else {
  //  fill(0, 0, 0);
  //  textSize(30);
  //  textAlign(CENTER);
  //  text ("PLAYER 1's TURN!", width/2, 100);
  //}


  for (Grid g : grids) {
    g.draw();
  }

  for (Pieces p : pieces) {

    p.draw ();
    if (down) {
      p.moveDown();
    }
  }

  println("Number of pieces: " + pieces.size());
/// REMOVING UNUSED PIECES
  if (pieces.size() >=i+1) {
    pieces.remove (0);

    if (pieces.size() >=100) {
      pieces.remove (10);

      if (pieces.size() >=1000) {
        pieces.remove (100);
      } else {
      }
    } else {
    }
  } else {
  }
}


void mousePressed () {

  if (mouseButton == LEFT ) {
    isEndturn = !isEndturn;
    i = i + 1; //Number of click
    isClicked = true;
  }
}

void keyPressed () {

  if (key == ' ') {
    down = !down;
  }
  
  if (key == '-') {
    i = i -1;
  }
}
