
import ketai.ui.*;


PImage img;
PImage newImg;

void setup() {
  size(3006, 995);
  img = loadImage("data/photo2.JPG");
  img.loadPixels();
  newImg = createImage(img.width, img.height, RGB);
  newImg.loadPixels();
  
  for (int i = 0; i<img.pixels.length; i++) {
    if(i%8 == 0){
    newImg.pixels[i] = img.pixels[i];
  } else {
    newImg.pixels[i] = img.pixels[i] + color(random(10), random(10), random(255));
  }
}
}

void draw() {
  image(img, 0, 0, 1503, 995);
  image(newImg, 1503, 0, 1503, 995);
}