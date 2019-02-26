class BallGame {
  int tick;
  PlayerBall player;
  ArrayList<EnemyBall> enemies=new ArrayList<EnemyBall>();
  BallGame() {
    reset();
  }
  void reset() {
    tick=0;
    player=new PlayerBall(width/2, height/2);
    noCursor();
    enemies.clear();
    for(int i=0; i<50; i++) {
      if(i==30) i+=5;
      enemies.add(new EnemyBall(i*width/51, -7*i, 0, 5));
    }
    for(int i=50; i>0; i--) {
      if(i==10) i-=5;
      enemies.add(new EnemyBall(i*width/51, -1000+7*i, 0, 5));
    }
  }
  void update() {
    tick++;
    display();
    for(int i=0; i<enemies.size(); i++) {
      enemies.get(i).update();
    }
    player.update();
    if(tick>600) {
      player.lowerSpeed();
      if(tick>630) {
        ellipse(player.pos.x, player.pos.y, tick-605, tick-605);
      }
    }
  }
  void display() {
    background(255);
    fill(0);
    strokeWeight(5);
    line(mouseX, mouseY, width/2, 2*height/3);
    strokeWeight(1);
    ellipse(width/2, 2*height/3, 50, 50);
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 25, 25);
  }
}