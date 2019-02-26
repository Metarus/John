class PlayerBall {
  PVector pos;
  PlayerBall(float x, float y) {
    pos=new PVector(x, y);
  }
  void update() {
    PVector vel=new PVector(mouseX-width/2, mouseY-(2*height/3));
    vel.normalize();
    pos.x+=10*vel.x;
    pos.y+=10*vel.y;
    display();
  }
  void display() {
    fill(255, 0, 0);
    ellipse(pos.x, pos.y, 25, 25);
  }
}