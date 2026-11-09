// Zoe Abraham

int WorldW = 2000; 
int WorldH = 1500;  // World width and height might change later


Player p1;


void setup() {
  size(800,600); 
  p1 = new Player (400,300);

} // end of void setup



void draw() {
  background(127);    // grey background
  p1.update();

CamX= p1.x - width / 2;
CamY= p1.y - height / 2;  // make it so that player is in the center of the screen

CamX = constrain(CamX, 0, worldW - width);
CamY = constrain(CamY, 0 worldH - height); // Keeps the camera only showing whats inside the world
// constrain used to ensure that value dosent exceed max and minimum - got the definition from processing.org

translate(-CamX, -CamY); // slide the world oposite to the camera(Cam) movement so the the player seems to move along the world
//just check processing.org- the description for translate is rlly long.

//drawGrid(); // only here to ensure the camera is actually scrolling- remove this once we have a background in place.
p1.diplay(); // Do not remove this this is actually for drawing the player on the screen

} //end of void draw

//void drawGrid() {
// theres supposed to code to create a grid here... its not here yet
// Only uncomment this after theres code, or just delete this after we have a background
//}



void keyPressed() {}

void mousePressed() {}
