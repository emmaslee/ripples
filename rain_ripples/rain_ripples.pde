Ripple[] ripples;
int n = 100;
color ripple = #8ecae6;
color water = #023047;

void setup() {
  textAlign(CENTER, CENTER);
  fullScreen();
  colorMode(HSB);
  noFill();
  
  ripples = new Ripple[n];
  int i = 0;
  while (i < n) {
    ripples[i] = new Ripple();
    i++;
  }
}
void draw() {
  background(0);
  int i = 0;
  while (i < n) {
 ripples[i].show();
 ripples[i].act();
 i++;
  }
}
