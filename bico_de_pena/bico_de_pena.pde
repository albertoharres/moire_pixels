PImage img;

void setup() {

  img = loadImage("cana.png");

  size(img.width, img.height);
}

void draw() {

 // background(255);
  
  loadPixels();
  img.loadPixels();

int tresh = 2*(255*mouseX/width)+1;

  for (int i = 0; i < (img.width-1)*(img.height-1); i+= 3) {

    float r = red(img.pixels[i]);
    float g = green(img.pixels[i]);
    float b = blue(img.pixels[i]);

    if (brightness(img.pixels[i]) < tresh/3) {
      pixels[i] = color(0);
    }
  }

  for (int i = 0; i < (img.width-1)*(img.height-1); i+= 4) {
    if ((brightness(img.pixels[i]) >= 85)&&(brightness(img.pixels[i]) < 2*tresh/3)) {
      pixels[i] = color(0);
    }
  }

  for (int i = 0; i < width*height; i+= 9) {
    if (brightness(img.pixels[i]) >= 2*tresh/3) {
      pixels[i] = color(0);
    }
  }

 

  img.updatePixels();
//  image(img, 0, 0);
  updatePixels();
}

