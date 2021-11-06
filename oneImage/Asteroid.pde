class Asteroid {

  float x;
  float y;
  float yspeed;
  float diameter;
  float r;


  PImage img;

  Asteroid() { // all spawning at the same x y at the very beginning, fix by using an array?
    x = random(width);
    y = random(50, height - 150);
    yspeed = random(0.5, 5.0);
    r = 20;



    diameter = random(20, 50);
  }


  void display(PImage tempImg) {
    img = tempImg;

    imageMode(CENTER);
    image(img, x, y, diameter, diameter);
  }

  void move() { // asteroid movement, want to add rotation
    x = x - yspeed;



    if (x < -1 * diameter) {
      y = random(100, height - 200);
      yspeed = random(0.5, 2.5);
      x = width + diameter;
    }
  }
}
