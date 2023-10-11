//Global variables
int appWidth, appHeight;
float backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight;
PImage picBackground, bickeForeground, darthVaderPortrait;
Boolean nightmode=false; //Note: clock will automatically turn on 
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
//
void setup() {
//fullscreen(); //displayWidth, displayHeight
size( 800, 400 ); //Landscape
// copy Display Orientation
appWidth = width;
appHeight = height;
//
//population
 int hourNightMode = hour(); //24-hour clock
  println(hourNightMode);
  if ( hourNightMode>17 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
backgroundimageX = appWidth*0;
backgroundimageY = appHeight*0;
backgroundimageWidth =appWidth -1;
backgroundimageHeight = appHeight-1;
 //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "imagesUsed/Landscape & Square Images/";
  picBackground = loadImage( imagesPath + landScapeImage + "Obi-wan-star-wars-jedi-23864621-800-600.jpg");
  bikeForeground = loadImage();
  darthVaderPortrait = loadImage();
  //
  //DIVs
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect(); //bike image
  rect(); //Darth Image
  //
} //End setup
//
void draw(){
  //background(255); //built in Bug, 1 pixel
  rect( backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
  //
  if( brightnessControl==true) tint(255, brightnessNumber); //GrayScale: 1/2 tint(i.e 128/256=1/2)
 // if( nightmode==true )tint(64, 64, 40); //GrayScale: 1/2 tint(i.e 128/256=1/2)
  if (nightmode==true) {
    tint (64, 64, 40);
  } else {
    noTint();//See Processing DOC
   // println(nightmode);
  }
image( picBackground, backgroundimageX,backgroundimageY, backgroundimageWidth, backgroundimageHeight);
 image( bikeForeground, ); //bike image, purpose: see circles in aspect ratio
  image( darthVaderPortrait, ); //Darth Vader in Portrait, geometry is landscape, thus centered
} //End draw
//
void keyPressed() {
if (key=='n'|| key=='N' ) { //Nightmode, basic control is boolean
 if (nightmode==true ) { 
  nightmode = false;
} else {
  nightmode = true;
}
   }
   //Brightness: ARROWS activate brightnessControl, never off
   //NOTE: NIGHTMODE does turn off
   if (key==CODED&& keyCode=UP || keycode==DOWN ) {//Brightness keybind
   brightnessControl = true;
   if (key==CODED&& keyCode=UP) brightnessNumber ++ ; //brightness +=1  //brightness
   if (key==CODED&& keyCode=DOWN);
   }
  //
println(brightnessNumber);
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
