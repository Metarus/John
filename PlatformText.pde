class PlatformText {
  String fullText;
  String text="";
  PVector pos;
  float xBound;
  boolean display;
  PlatformText(String txt, float x, float y, float minX) {
    fullText=txt;
    pos=new PVector(x, y);
    xBound=minX;
  }
  void update() {
    if(platformGame.player.pos.x>xBound) {
      display=true;
    }
    if(display&&text.length()<fullText.length()&&platformGame.tick%5==0) {
      text=text+fullText.charAt(text.length());
    }
    display();
  }
  void display() {
    textSize(50);
    fill(0);
    text(text, pos.x-platformGame.cam.pos.x, pos.y-platformGame.cam.pos.y);
  }
}