//Marika H

//button
boolean mouseReleased;
boolean hadPressed;



Button blueButton, greenButton, pinkButton, blackButton;
color bkg;

//color pallette
color blue   = #28E7ED;
color green  = #CEF255;
color pink   = #F76DDC;
color yellow = #FFF387;
color black  = #000000;
color white  = #FFFFFF;

//======================================= mode framework

int mode;
final int INTRO = 0;
final int MOUSE = 1;
final int GAME = 2;
final int GAMEOVER = 3;

//========================= gif
AnimatedGif Giff;


void setup(){
size(800, 600, FX2D);

}

void draw(){
  
//gif
Giff.show();
  
//button
 
  if (mousePressed) hadPressed = true;
  else if (hadPressed && !mousePressed) {
     mouseReleased = true;
     hadPressed = false;
  }
  else if (mouseReleased) mouseReleased = false;
  
  
  
  background(bkg);
  blueButton.show();
  greenButton.show();
  pinkButton.show();
  blackButton.show();
 
  if (blueButton.clicked) {
     bkg = blue; 
  }
  if (greenButton.clicked) {
     bkg = green; 
  }
  if (pinkButton.clicked) {
     bkg = pink; 
  }
  if (blackButton.clicked) {
     bkg = black; 
  }
  //============================================= mode framework
if (mode == INTRO){
intro();
}
else if (mode == MOUSE){
mousePressed();
}
else if (mode == GAME){
game();
}
else if (mode == GAMEOVER){
gameover();
}
else{println("Error: Mode = " + mode);}
}
