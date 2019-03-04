class PlatformGame {
  PImage backgroundSquare=loadImage("data/tile.png");
  int tick=0;
  PlatformCamera cam;
  PlatformPlayer player;
  PlatformText[] text={
    new PlatformText("Hey John", 3000, 1750, 2800),
    new PlatformText("I've known you for, what? \n 6 years now?", 4500, 1750, 4300),
    new PlatformText("You've taught me so many things \n from coding to rock climbing", 6000, 1750, 5800),
  };
  PlatformGame(float px, float py) {
    cam=new PlatformCamera(new PVector(0, 0));
    player=new PlatformPlayer(px, py);
  }
  void update() {
    tick++;
    player.update();
    cam.update();
  
    display();
    player.display();
    for(int i=0; i<text.length; i++) {
      text[i].update();
    }
  }
  void display() {
    background(255);
    fill(0);
    rect(0-cam.pos.x, 2500-cam.pos.y, 10000, 500);
    for(int i=0; i<10000; i+=backgroundSquare.width) {
      for(int j=2500; j<3000; j+=backgroundSquare.height) {
        image(backgroundSquare, i-cam.pos.x, j-cam.pos.y);
      }
    }
  }
}