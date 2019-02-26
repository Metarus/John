class BallGame {
  PlayerBall player=new PlayerBall(width/2, height/2);
  ArrayList enemies=new ArrayList<EnemyBall>();
  BallGame() {
    noCursor();
  }
  void update() {
    display();
    player.update();
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