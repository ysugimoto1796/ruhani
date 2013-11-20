class people {
  int speed;
  int s;
  PVector location; 
  PVector ve;
  PImage person;
  float scale;
  boolean blow;


  people() {
    scale=0.3;
    ve= new PVector(speed, 0);
    person= loadImage("soldier.png");
    person.resize(int(person.width*scale), int(person.height*scale));
    blow= false;
    location= new PVector(random(100, width-100), height-person.height/2);
  }
  void load() {
    image(person, location.x, location.y, person.width, person.height);
  }
  void panic() {
    s=5;
    if (key=='l') {
      speed= s;
    }
    if (key=='k') {
      speed= -s;
    }


    location.add(ve);
  }
  void stay() {
    if (location.x+person.width/2>width || location.x-person.width/2<0) {
      ve.x=-ve.x;
    }
  }
  void move() {
    if (mousePressed && (mouseButton == RIGHT)) {
      location.x+=8;
    }

    if (mousePressed && (mouseButton==LEFT)) {
      location.x-=8;
    }
  }
  void reset() {
    if (keyPressed &&   key=='r') {
      location= new PVector(random(100, width-100), height-person.height/2);
      ve.x = speed;
      ve.y = 0;
    }
  }
}

