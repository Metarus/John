class EnemyBall {
  PVector pos;
  PVector vel;
  EnemyBall(float x, float y, float vx, float vy) {
    pos=new PVector(x, y);
    vel=new PVector(vx, vy);
  }
}