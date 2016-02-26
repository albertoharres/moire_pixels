PImage img;

void setup() {

  img = loadImage("cana.jpg");

  size(img.width, img.height);
}

void draw() {

  background(255);

  loadPixels();
  img.loadPixels();

  int tresh = 178;

  for (int i = 0; i < (img.width-1)*(img.height-1); i+= 5) {


    if (brightness(img.pixels[i]) < tresh/1.6) {
      pixels[i] = color(0);
    }
  }
   for (int i = 1; i < (img.width-1)*(img.height-1); i+= 5) {


    if (brightness(img.pixels[i]) < tresh/1.6) {
      pixels[i] = color(0);
    }
  }
   for (int i = 2; i < (img.width-1)*(img.height-1); i+= 5) {


    if (brightness(img.pixels[i]) < tresh/1.6) {
      pixels[i] = color(0);
    }
  }

  for (int i = 0; i < (img.width-1)*(img.height-1); i+= 7) {
    if ((brightness(img.pixels[i]) >  tresh/1.6)&&(brightness(img.pixels[i]) < tresh)) {
      pixels[i] = color(0);
    }
  }
    for (int i = 1; i < (img.width-1)*(img.height-1); i+= 7) {
    if ((brightness(img.pixels[i]) >  tresh/1.6)&&(brightness(img.pixels[i]) < tresh)) {
      pixels[i] = color(0);
    }
  }

  for (int i = 0; i < width*height; i+= 11) {
    if (brightness(img.pixels[i]) > 1.5*tresh) {
      pixels[i] = color(0);
    }
  }


  img.updatePixels();
  //image(img, 0, 0);
  updatePixels();
}


void mouseMoved() {
  println(mouseX);
}

void keyPressed() {
  saveFrame();
}

