int scale;
PImage war;
people[] ppls = new people[1];
moving[] bombs = new moving[8];
void setup() {
  scale=2;
  war= loadImage("pickingdom11.jpg");
  war.resize(int(war.width*scale), int(war.height*scale));
  size(war.width, war.height);
  imageMode(CENTER);

  for (int i = 0; i < ppls.length; i++) {
    ppls[i] = new people();
  }
  for (int i = 0; i < bombs.length; i++) {
    bombs[i] = new moving();
  }
}
void draw() {
//        println(bombs[1].location.y);
//  background(war);
background(150);
  for (int i=0; i < ppls.length;i++) {
    ppls[i].load();
    ppls[i].panic();
    ppls[i].stay();
    ppls[i].move();
    ppls[i].reset();
  }
  for (int i=0; i < bombs.length;i++) {
    bombs[i].load();
    bombs[i].shoot();
    bombs[i].explode(ppls);
    bombs[i].reset();
    bombs[i].drop();
//     bombs[i].score();
  }

}


