class Ripple {
  
  //instance variables
  float x, y, a, size;
  final int MAXSIZE = 200;
  
  //constructor
  Ripple() {
    x = random(0,width);
    y = random(0,height);
    a = 255;
    size = random(0, MAXSIZE);

  }
  //behavi0r functions
  void act() {
    size = size + 4;
    if (size >= MAXSIZE) {
      size = 0;
      x = random(0,width);
      y = random(0,height);
    }
    a = map(size, 0, MAXSIZE, 255, 0);
  }


void show() {
  stroke(#8ecae6, a);
  noFill();
  ellipse(x, y, size, size/2);
}
}
