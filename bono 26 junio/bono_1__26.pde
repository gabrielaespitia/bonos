
int diametro = 200;
float radio = diametro / 2;

int centroHorizontal;
int centroVertical;

void setup() {
  size(1000, 1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background(150, 150, 200);
  noStroke();

  float d = dist(mouseX, mouseY, centroHorizontal, centroVertical);

  if (d < radio) {
    fill(45, 60, 90);
  } else {
    fill(255);
  }


  ellipse(centroHorizontal, centroVertical, diametro, diametro);
}
