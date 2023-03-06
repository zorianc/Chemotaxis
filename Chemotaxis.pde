Bacteria[] wArray = new Bacteria[20];

void setup() {
  size(500, 500);
  frameRate(1000);
  for ( int i=0; i<20; i++) { 
    wArray[i] = new Bacteria();
  }
}

void draw() {

  background(151);
  stroke(0);
  for ( int i=0; i<20; i++) { 
    wArray[i].move();
    wArray[i].show();
  }
}
