
int mode;
final int intro=0;
final int game=1;
final int pause=2;
final int gameover=3;


void setup() {
  size(800, 800);
  mode=intro;
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
