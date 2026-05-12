//Aiden
int mode;
final int intro=0;
final int game=1;
final int pause=2;
final int gameover=3;
final int options=4;


//entity variables
float leftx,lefty,leftd,rightx,righty,rightd;//paddles
float ballx,bally,balld;
float v;

//keyboard variables
boolean wkey,skey,upkey,downkey;

void setup(){
  size(800,800);
 mode=intro;
 
 leftx=0;
 lefty=height/2;
 leftd=200;
 
  rightx=width;
 righty=height/2;
 rightd=200;
 
 //intialize ball
  ballx=width/2;
 bally=height/2;
 balld=100;
 
 //intitalize keyboard vars
 wkey=skey=downkey=upkey=false;
 
 v=1;
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
