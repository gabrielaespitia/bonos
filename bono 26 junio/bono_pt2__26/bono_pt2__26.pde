int x;
int y;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  noStroke();
  frameRate(10);
}

void draw() {
  if (y < height) {
    ellipse (x, y, 50, 50);
    x = x + 70;
    

    if (x > width) {
      x = 0;
      y = y + 70;
    }
  }
}
