int x = 0;
int y = 70;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  noStroke();
  frameRate(30);
}

void draw() {

  float numAleatorio = random(0, 1);
  radio = (numAleatorio * width / 2);

  fill(255, 30);

  stroke(random(0, 100), random(100, 255), random(200, 255));
  triangle(x, y, radio, radio, y+(radio/2), y+(radio/2));

  x = x + 70;
  println(x);

  if (x > width) {
    x = 0;
    y = y + 70;
  }

  if (y > height) {

    ellipse (x, y, radio, radio);
  }
}
