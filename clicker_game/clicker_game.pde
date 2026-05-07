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

//Target Variables
float x,y,d;
float vx,vy; //target velocity
float score,lives;


void setup() {
  size(800, 800);
  mode=intro;
  
  //target intialization
  x=width/2;
  y=height/2;
  d=100; 
  
  
  //moving
  vx=random(-5,5);
  vy=random(-5,5);
  
  score=0;
  lives=3;
  
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
  } else {
    println("Error:Mode="+mode);
  }
}
