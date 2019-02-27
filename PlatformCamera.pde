class PlatformCamera {
  PVector pos;
  PlatformCamera(PVector start) {
    pos=start;
  }
  void update() {
    while(pos.x+width-1250<platformGame.player.pos.x) {
      pos.x++;
    }
    while(pos.x+1000>platformGame.player.pos.x) {
      pos.x--;
    }
    while(pos.y+height-500<platformGame.player.pos.y) {
      pos.y++;
    }
    while(pos.y+500>platformGame.player.pos.y) {
      pos.y--;
    }
    if(pos.x<0) pos.x=0;
    if(pos.y<0) pos.y=0;
  }
}