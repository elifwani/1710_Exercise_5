class Birds {

  float x;
  float y;

  float sizeX;
  float sizeY;

  float xpos;
  float ypos;
  //float ypos = height * 0.25;

  float drag = 30.0;
  
  float r = 20;



  Birds(float tempsizeX, float tempsizeY) {
    sizeX = tempsizeX;
    sizeY = tempsizeY;
  }

  void display() { //display and move the starship
    float dx = mouseX - xpos;
    xpos = xpos + dx/drag;
    
    ypos = mouseY * 0.73;


    imageMode(CENTER);
    image(bird, xpos, ypos, sizeX, sizeY);
  }
  
  boolean overlaps(Asteroid other) {
    float d = dist(xpos,ypos,other.x,other.y);
    
    if (d < r + other.r) {
      return true;
    } else {
      return false;
    }
  }
}
