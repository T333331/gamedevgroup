//Alan

class Player {

int x,y,w,h,health,speed;
PImage p1;
boolean isMovingLeft;
  boolean isMovingRight;
  boolean isMovingUp;
  boolean isMovingDown;

 

  Player (int startX, int startY) {
    x= startX;
    y = startY; // the code wouldnt run without the startX and startY or smth // position
w = 50;
h = 50;
speed = 4;
health = 5;
isMovingLeft = false;
    isMovingRight = false;
    isMovingUp = false;
    isMovingDown = false;
    speed = 10;
p1 = loadImage("Sprite in 128 pixels.png");
}

void display() {
pushStyle (); // svae the current settings imagemode being center
  imageMode (CENTER);// change only the player
image(p1,x,y, w = 128, h = 128); // centers the image if you wanna adjust the sprite just change w and h
popStyle();// make image mode corner again
}
void move() {
    if (isMovingLeft == true) {
      x -= speed;
    }
    if (isMovingRight == true) {
      x += speed;
    }
    if (isMovingUp == true) {
      y -= speed;
    }
    if (isMovingDown == true) {
      y += speed;
    }
  }

void attack() {}

void fire() {}

void update() {

if (keyPressed) {
  if (key =='w' || key == 'W') y -= speed;
  if (key =='s' || key == 'S') y += speed;
  if (key =='a' || key == 'A') x -= speed;
  if (key =='d' || key == 'D') x += speed;
  }
  
  // keep the player in the worlds
  x = constrain(x, w/2, WorldW - w/2);
  y = constrain(y, h/2, WorldH - h/2);

} 

}
