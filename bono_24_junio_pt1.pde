// definicion de una variable
int posX = 0;

// ejecuta una sola vez
void setup() {
  size(500, 500);
  frameRate(1);
}

// ejecuta muchas veces

void draw() {
  background(255);
  line(posX, 0, posX, height);
  posX++;
  println(posX);
  
  if (posX > width) {
    posX = 0;
  }
}
