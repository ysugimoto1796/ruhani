class moving {
  PVector location;
  PVector ve;
  PVector a;
  PImage bomb;
  float scale;
  boolean blow;
  float amax;
  int run;

  moving() {
    amax=0.1;
    location= new PVector(random(width), 0);
    ve= new PVector(0, random(1, 2));
    a= new PVector(0, (random(0, amax)));
    blow=false;
    scale= 0.1;
    bomb= loadImage("bomb.png");
    bomb.resize(int(bomb.width*scale), int(bomb.height*scale));
  }
  void load() {

    image(bomb, location.x, location.y, bomb.width, bomb.height);
  }
  void shoot() {
    ve.add(a);
    location. add(ve);
    ve.limit(30);
  }
  void explode(people[] ppls) {
    for (people p : ppls) {
      if (abs(p.location.x - location.x) < 50 && location.y >= height) {
        println("hit");
        p.ve.x = 0;
        p.ve.y = -50;
      }
    }
  }
  void reset() {
    if (location.y>height) {
      location.y=0;
      location.x=random(width);
      ve= new PVector(0, random(1, 3));
      a= new PVector(0, amax+=0.025);
      println(amax);
    }
  }
  void drop() {
    if (keyPressed &&   key=='r') {
      amax=0.1;
      location= new PVector(random(width), 0);
      ve= new PVector(0, random(1, 2));
      a= new PVector(0, (random(0, amax)));
      run+=1;
    }
  }

  void swag() {
    textAlign(CENTER, CENTER);
    textSize(200);
    text("SWAG", width/2, height/2);
  }
  //    void score(){
  //     textAlign(CENTER, CENTER);
  //    textSize(200);
  //    text(run, width-100, 100);
  //    }
}

