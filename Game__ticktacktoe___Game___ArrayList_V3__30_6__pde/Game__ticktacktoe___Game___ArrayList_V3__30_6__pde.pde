
ArrayList<Grid> grids = new ArrayList<Grid>();
ArrayList<Pieces> pieces = new ArrayList<Pieces> ();



boolean down = false;

float size = 50;

void setup () {
  rectMode(CENTER);

  size (1000, 1000);
  background(255, 255, 255);

  for (float y = 0; y <= height; y+=size) {
    for (float x = 0; x <= width; x+= size) {
      grids.add (new Grid (x, y, size));
    }
  }
}


void draw () {
  for (Grid g : grids) {
    g.draw();
    g.update(c);
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

  for (Pieces p : pieces) {

    p.draw ();
    if (down) {
      p.moveDown();
    }
  }
}


void mousePressed () {
  if (isHover == true && mouseButton == LEFT ) {
    isEndturn = !isEndturn;
  }
}
void keyPressed () {
  if (key == ' ') {
    down = !down;
  }
}
