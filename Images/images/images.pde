//Global variables
int appWidth, appHeight;
float backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight;
PImage picBackground;
//
void setup() {
//fullscreen(); //displayWidth, displayHeight
size( 500, 100 ); //Landscape
// copy Display Orientation
appWidth = width;
appHeight = height;
//
//population
backgroundimageX = appWidth*0;
backgroundimageY = appHeight*0;
backgroundimageWidth =appWidth -1;
backgroundimageHeight = appHeight-1;
picBackground = loadImage(".image.");
//
//DIVs
//
rect( backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
//
} //End setup
//
void draw() {
image( picBackground, backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePresed
