class PlatformPlayer {
  PVector pos, vel=new PVector(0, 0);
  PlatformPlayer(float x, float y) {
    pos=new PVector(x, y);
  }
  void update() {
    if(space&&pos.y>=2245) vel.y-=30;
    if(a) vel.x-=2;
    if(d) vel.x+=2;
    vel.y+=4;
    if(pos.y>=2245) vel.x*=0.9;
    vel.x*=0.95;
    pos.x+=vel.x;
    pos.y+=vel.y;
    if(pos.y>2250) {
      pos.y=2250;
      vel.y=0;
    }
  }
  void display() {
    rectMode(0);
    fill(255, 0, 0);
    rect(pos.x-platformGame.cam.pos.x, pos.y-platformGame.cam.pos.y, 250, 250);
  }
}