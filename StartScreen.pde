//Base System
PImage background;
int timer=0;
boolean loaded=false;

void baseScreen() {
  if(timer<30) image(background, 0, 0);
  if(mouseX>1480&&mouseX<1590&&mouseY>2060&&mouseY<2160&&mousePressed) {
    background=loadImage("data/bg2.png");
    loaded=true;
  }
  if(loaded) timer++;
  if(timer>30) {
    state=1;
  }
}

//Block System
PImage mainBg;
boolean fall=false;
Block blocks[][];

void fallScreen() {
  background(0);
  textSize(450);
  fill(255);
  text("Start", width/2, height/2+150);
  for(int i=0; i<blocks.length; i++) {
    for(int j=0; j<blocks[i].length; j++) {
      blocks[i][j].display();
    }
  }
  if(mouseX>100&mouseX<190&&mouseY>130&mouseY<210&!fall&&mousePressed) {
    fall=true;
  }
  if(fall&&mouseX>1400&&mouseX<2440&&mouseY>830&&mouseY<1260&&mousePressed) {
    state=2;
    ballGame=new BallGame();
    music=minim.loadFile("data/song1.mp3");
    music.play();
  }
}