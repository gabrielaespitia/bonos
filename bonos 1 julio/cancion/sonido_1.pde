import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

// numero de bandas de frecuencia
int bands = 256;
// array para guardar espectro de nuestras frecuencias
float[] spectrum = new float[bands];

int x = 0;
int y = 70;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  
  // importar la cancion
  soundfile = new SoundFile(this, "lately.mp3");
  
  // crear analizador de frecuencias
  fft = new FFT(this, bands);
  
  // analice la cancion
  fft.input(soundfile);
  
  // reproducir la cancion
  soundfile.play();
}



void draw() {
  fft.analyze(spectrum);
  
  // esto lo puedo * por 100, el float
  float level = spectrum[10] * 5;
  radio = (level * width);
  
  radio = constrain(radio, 10, 500);

  fill(255, 30);

  stroke(random(0, 100), random(100, 255), random(200, 255));
  ellipse(x, y, radio, radio);

  x += 70;

  if (x > width) {
    x = 0;
    y = y + 70;
  }

  if (y > height) {
    y = 70;
    background(0);
  }
}
