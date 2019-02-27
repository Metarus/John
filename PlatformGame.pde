class PlatformGame {
  PlatformCamera cam;
  PlatformPlayer player;
  PlatformGame(float px, float py) {
    cam=new PlatformCamera(new PVector(0, 0));
    player=new PlatformPlayer(px, py);
  }
  void update() {
    player.update();
    cam.update();
  
    display();
    player.display();
  }
  void display() {
    background(255);
    fill(0);
    rect(0-cam.pos.x, 2500-cam.pos.y, 10000, 500);
    ellipse(200-cam.pos.x, 2000-cam.pos.y, 200, 300);
  }
}