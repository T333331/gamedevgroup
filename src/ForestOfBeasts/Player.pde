//Alan

class Player {

int x,y,w,h,health;
PImage p1;

Player(int startX, int startY) { // the code wouldnt run without the startX and startY or smth
x = startX;
y = startY; // position
w = 50;
h = 50;
health = 5;
p1 = loadImage("Sprite in 128 pixels.png");
}

void display() {
image(p1,x,y);
}
void move() {}

void attack() {}

void fire() {}

void update() {} // can you put in some keypressed movement here for WASD or the arrowkeys ?

}
