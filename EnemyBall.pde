class EnemyBall {
  PVector pos;
  PVector vel;
  EnemyBall(float x, float y, float vx, float vy) {
    pos=new PVector(x, y);
    vel=new PVector(vx, vy);
  }
  void update() {
    pos.x+=vel.x;
    pos.y+=vel.y;
    if(dist(pos.x, pos.y, ballGame.player.pos.x, ballGame.player.pos.y)<50) {
      ballGame.reset();
    }
    display();
  }
  void display() {
    fill(0);
    ellipse(pos.x, pos.y, 75, 75);
  }
}