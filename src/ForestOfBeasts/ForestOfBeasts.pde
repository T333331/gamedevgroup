// Zoe Abraham

import gifAnimation.*;

int WorldW = 2400; 
int WorldH = 1400;  // World width and height might change later
PImage bg;

Player p1;
int CamX, CamY;


void setup() {
  size(800,600); 
  p1 = new Player (400,300);
  bg = loadImage("level one background aaa.png");
  WorldW = bg.width;
  WorldH = bg.height;
 p1 = new Player(WorldW/ 2, WorldH /2);
 println(bg.width, bg.height);

} // end of void setup



void draw() {
  
  p1.update();

CamX= p1.x - width / 2;
CamY= p1.y - height / 2;  // make it so that player is in the center of the screen

CamX = constrain(CamX, 0, WorldW - width);
CamY = constrain(CamY, 0, WorldH - height); // Keeps the camera only showing whats inside the world
// constrain used to ensure that value dosent exceed max and minimum - got the description from processing.org

background(0);
translate(-CamX, -CamY); // slide the world oposite to the camera(Cam) movement so the the player seems to move along the world
//just check processing.org- the description for translate is rlly long.

//drawGrid(); // only here to ensure the camera is actually scrolling- remove this once we have a background in place.
imageMode(CORNER);
image(bg, 0, 0);
p1.display(); // Do not remove this this is actually for drawing the player on the screen

} //end of void draw





void keyPressed() {}

void mousePressed() {}
