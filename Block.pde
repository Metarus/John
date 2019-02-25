class Block {
  boolean fallen=false;
  PVector pos, dim, vel=new PVector(0, 0);
  PVector imgPos, imgDim;
  Block(float x, float y, float w, float h, float partX, float partY, float partW, float partH) {
    pos=new PVector(x, y);
    dim=new PVector(w, h);
    imgPos=new PVector(partX, partY);
    imgDim=new PVector(partW, partH);
  }
  void display() {
    if(fall&&!fallen) fall();
    if(fallen) {
      vel.y+=0.2;
      pos.x+=vel.x;
      pos.y+=vel.y;
    }
    image(mainBg, pos.x, pos.y, dim.x, dim.y, (int)imgPos.x, (int)imgPos.y, (int)imgDim.x, (int)imgDim.y);
  }
  void fall() {
    fallen=true;
    vel.x=random(-10, 10);
    vel.y=random(-25, 3);
  }
}