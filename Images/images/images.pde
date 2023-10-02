//Global variables
int appWidth, appHeight;
float backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight;
PImage picBackground;
Boolean nightmode=false; //Note:clock and turn on automatically
//
void setup() {
//fullscreen(); //displayWidth, displayHeight
size( 800, 400 ); //Landscape
// copy Display Orientation
appWidth = width;
appHeight = height;
//
//population
backgroundimageX = appWidth*0;
backgroundimageY = appHeight*0;
backgroundimageWidth =appWidth -1;
backgroundimageHeight = appHeight-1;
picBackground = loadImage(".images used, ");
//
//DIVs
//
rect( backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
//tint(255, 128); //GrayScale: 1/2 tint(i.e 128/256=1/2)
  tint(255, 255, 0); //GrayScale: 1/2 tint(i.e 128/256=1/2)
//
} //End setup
//
void draw(){
  background(255); //built in Bug, 1 pixel
  rect( backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
  //
  //if( [BRIGHTNESS, see keyPressed]  )tint(255, 128); //GrayScale: 1/2 tint(i.e 128/256=1/2)
 // if( nightmode==true )tint(64, 64, 40); //GrayScale: 1/2 tint(i.e 128/256=1/2)
  if (nightmode==true) {
    tint (64, 64, 40);
  } else {
    noTint();//See Processing DOC
  }
image( picBackground, backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
} //End draw
//
void keyPressed() {
//Brightness
//
  if (key='n' || key=='N' ) {//Nightmode, basic control is boolean
 if (nightmode==true ) { 
  nightmode = false;
} else {
  nightmode = true;
}
//End mousePressed
void mousePressed() }
//End mousePresed
