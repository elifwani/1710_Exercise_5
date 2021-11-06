class Background {

  PImage img;

  float sizeX;
  float sizeY;

  float x1;
  float tX1;
  float y1;

  float y2;
  float x2;

  float x3;
  float tX3;
  float y3;


  Background(float tempsizeX, float tempsizeY) {
    y1 = height-180;
    tX1 = 1080;
    x1 = width/2;

    x2 = 480;
    y2 = height - 163;

    y3 = height - 160;
    tX3 = 1080;
    x3 = width/2;



    sizeX = tempsizeX;
    sizeY = tempsizeY;
  }

  void displayTerrain() {
    imageMode(CENTER);
    image(terrain, x1, y1, sizeX, sizeY);
    image(terrain, tX1, y1, sizeX, sizeY);

  }

  void displayPods() {
    imageMode(CENTER);
    image(pods, x2, y2, sizeX, sizeY);
  }

  void displayRocks() {
    imageMode(CENTER);
    image(rocks, x3, y3, sizeX, sizeY);
    image(rocks, tX3, y3, sizeX, sizeY);
  }

  void move() { //parallax scrolling of the terrain (might fix the stitching)
    tX1 = tX1 - 7;
    x1 = x1 - 7;

    if (x1 <= - 360) {
      x1 = 1080;
    }
    if (tX1 <= - 360) {
      tX1 = 1080;
    }

  }

  void moveR() { //parallax scrolling of the mountains
    x3 = x3 - 0.5;
    tX3 = tX3 - 0.5;

    if (x3 < - 360) {
      x3 = 1080;
      x3 = x3-0.5;
    }

    if (tX3 < -360) {
      tX3 = 1080;
      tX3 = tX3-0.5;
    }
  }
}
