import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variavles
Minim minim;
AudioPlayer theme,point,gameoversong,losealife;


//Aiden Xu


//mode variables
int mode;
final int intro=0;
final int game=1;
final int pause=2;
final int gameover=3;
final int options=4;

//Target Variables
float x,y,d;
float vx,vy; //target velocity
float score,lives;
float highscore;
PImage sniper;
PImage red;
float a=random(0,2*PI);
int selectedtarget;
int stillselectedtarget;
float sliderX;
float diameter;


void setup() {
  size(800, 800);
   sniper=loadImage("sniper.png");
  red=loadImage("red (2).png");
  mode=intro;
  
  //target intialization
  x=width/2;
  y=height/2;
  d=100; 
    sliderX=400;
  diameter=100;
  
  
  //moving
  vx=5*cos(a);
  vy=5*sin(a);
  
  score=0;
  lives=3;
  highscore=0;
  selectedtarget=1;
  stillselectedtarget=1;
  
  //minim
  minim=new Minim(this);
  theme=minim.loadFile("theme.mp3");
   point=minim.loadFile("success.mp3");
   gameoversong=minim.loadFile("gameover.mp3");
    losealife=minim.loadFile("losealife.mp3");
    theme.loop();
} 

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else if (mode==options){
    options();
  } else {
    println("Error:Mode="+mode);
  }
}
