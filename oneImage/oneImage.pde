import processing.sound.*;

SoundFile backgroundMusic;
SoundFile bonk;

PImage asteroid;

PImage terrain;
PImage pods;
PImage rocks;
PImage bird;
PImage kaboom;

int plays = 0;


Asteroid a1 = new Asteroid();
Asteroid a2 = new Asteroid();
Asteroid a3 = new Asteroid();
Asteroid a4 = new Asteroid();
Asteroid a5 = new Asteroid();

Background i1;
Background i2;
Background i3;

Birds s1 = new Birds(200, 200);

void setup() {
  size(720, 480, P2D);

  i1 = new Background(725, 480);
  i2 = new Background (720, 480);
  i3 = new Background (721, 480);

  terrain = loadImage("terrain.png");
  asteroid  = loadImage("asteroid.png");
  pods = loadImage("pods.png");
  rocks = loadImage("rocks.png");
  bird = loadImage("bird.png");
  kaboom = loadImage("kaboom.png");

  backgroundMusic = new SoundFile(this, "sound/tentacle-wedding.mp3");
  backgroundMusic.play();

  bonk = new SoundFile(this, "sound/bonk1.wav");
  bonk.amp(0.2);
}

void draw() {
  background(#FFA57C);

  i3.displayRocks();
  i2.displayPods();
  i1.displayTerrain();

  s1.display();


  a1.display(asteroid);
  a2.display(asteroid);
  a3.display(asteroid);
  a4.display(asteroid);
  a5.display(asteroid);

  i3.moveR();
  i1.move();

  a1.move();
  a2.move();
  a3.move();
  a4.move();
  a5.move();

  if (s1.overlaps(a1)) {
    a1.display(kaboom);
    while (plays < 1) {
      bonk.play();
      plays++;
    }
  } else {
    plays = 0;
  };

  if (s1.overlaps(a2)) {
    a2.display(kaboom);
    while (plays < 1) {
      bonk.play();
      plays++;
    }
  } else {
    plays = 0;
  };

  if (s1.overlaps(a3)) {
    a3.display(kaboom);    
    while (plays < 1) {
      bonk.play();
      plays++;
    }
  } else {
    plays = 0;
  };

  if (s1.overlaps(a4)) {
    a4.display(kaboom);    
    while (plays < 1) {
      bonk.play();
      plays++;
    }
  } else {
    plays = 0;
  };

  if (s1.overlaps(a5)) {
    a5.display(kaboom);
    while (plays < 1) {
      bonk.play();
      plays++;
    }
  } else {
    plays = 0;
  };
}
