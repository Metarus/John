class PlayerBall {
  PVector pos;
  float speed=10;
  PlayerBall(float x, float y) {
    pos=new PVector(x, y);
  }
  void update() {
    PVector vel=new PVector(mouseX-width/2, mouseY-(2*height/3));
    vel.normalize();
    pos.x+=speed*vel.x;
    pos.y+=speed*vel.y;
    display();
    if(pos.x<12.5||pos.x>width-12.5||pos.y<0||pos.y>height-12.5) ballGame.reset();
  }
  void display() {
    fill(255, 0, 0);
    ellipse(pos.x, pos.y, 25, 25);
  }
  void lowerSpeed() {
    speed/=1.1;
  }
}