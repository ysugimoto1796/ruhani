int time;
int oldtime;
int score;
int scorey;
class score {
  score() {
    oldtime=0;
    score=0;
  }
  void board() {
    time=millis();
    score= int((time-oldtime)/1000);
    textAlign(CENTER, CENTER);
    textSize(200);
    text(score, width-100, 100);
   text(scorey,width-100, 300);
  }
  int st(people c) {
    if (c.location.y<0 && c.location.y>-100) {
      scorey=score;
 
    }
         return scorey;
  }

  void reset() {
       
    if (keyPressed &&   key=='r') {
      oldtime=millis();
    }
  }
}

