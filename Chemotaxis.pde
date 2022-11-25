class Bacteria {
  int myColor;
  float x;
  float y;
  Bacteria() {
    x = (int)(Math.random()*width);
    y = (int)(Math.random()*height);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  void show() {
    stroke(0);
    fill(myColor);
    ellipse(x, y, 30, 30);
  }

  void move() {
    x += (int)(Math.random()*3)-1;
    y += (int)(Math.random()*3)-1;
    if (x < 0) {
      x = width;
    }
    if (x > width) {
      x = 0;
    }

    if (y < 0) {
      y = height;
    }
    if (y > height) {
      y = 0;
    }
    if (mousePressed) {
      if (mouseX > x) 
        x = x + (int)(Math.random()*5)-1; 
      else
        x = x + (int)(Math.random()*5)-3;

      if (mouseY > y) 
        y = y + (int)(Math.random()*5)-1; 
      else
        y = y + (int)(Math.random()*5)-3;
    }
  }
}
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
