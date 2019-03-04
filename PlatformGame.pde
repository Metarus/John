class PlatformGame {
  PImage backgroundSquare=loadImage("data/tile.png");
  int tick=0;
  PlatformCamera cam;
  PlatformPlayer player;
  PlatformText[] text={
    new PlatformText("Hey John", 3000, 1750, 2800),
    new PlatformText("I've known you for, what? \n 6 years now?", 4500, 1750, 4300),
    new PlatformText("You've taught me so many things \n from coding to rock climbing", 6000, 1750, 5800),
    new PlatformText("to Robotics to IB Comp sci \n And I think I speak for everyone when I say", 7500, 1750, 7300),
    new PlatformText("You've taught us all so much \n and I'm thankful in every way to have had you as a teacher", 9000, 1750, 8800),
    new PlatformText("A mentor", 10500, 1750, 10300),
    new PlatformText("A friend.", 11500, 1750, 11300),
    new PlatformText("When I look back to 6 years ago \n I see a younger Rana", 13000, 1750, 12800),
    new PlatformText("But also a younger John", 14500, 1750, 14300),
    new PlatformText("You've grown with us \n And I'm glad I got to see it", 16000, 1750, 15800),
    new PlatformText("Here's to your marriage \n and I can't wait to see what the future holds", 17500, 1750, 17300)
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
    for(int i=0; i<20000; i+=backgroundSquare.width) {
      for(int j=2500; j<3000; j+=backgroundSquare.height) {
        image(backgroundSquare, i-cam.pos.x, j-cam.pos.y);
      }
    }
  }
}