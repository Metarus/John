import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer music;
  
int state=0;

//Game Setups
BallGame ballGame;
PlatformGame platformGame;
boolean a, d, space;

void setup() {
  fullScreen(P2D);
  textAlign(CENTER);
  minim = new Minim(this);
  background=loadImage("data/bg.png");
  mainBg=loadImage("data/bg3.png");
  blocks=new Block[16][18];
  for(int i=0; i<mainBg.width; i+=mainBg.width/16) {
    for(int j=0; j<mainBg.height; j+=mainBg.height/18) {
      blocks[i/(mainBg.width/16)][j/(mainBg.height/18)]=new Block(i, j, mainBg.width/16, mainBg.height/18, i, j, i+mainBg.width/16, j+mainBg.height/18);
    }
  }
}

void draw() {
  switch(state) {
    case 0:
      baseScreen();
      break;
    case 1:
      fallScreen();
      break;
    case 2:
      ballGame.update();
      break;
    case 3:
      platformGame.update();
      break;
  }
}

void keyPressed() {
  if(key=='a') a=true;
  if(key=='d') d=true;
  if(key==' ') space=true;
}

void keyReleased() {
  if(key=='a') a=false;
  if(key=='d') d=false;
  if(key==' ') space=false;
}