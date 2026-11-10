//Alan

class Player {

int x,y,w,h,health;
//PImage p1;

Player(int startX, int StartY) { // the code wouldnt run without the startX and startY or smth
x = startX;
y = startY; // position
//w = 50;
//h = 50; // there was a copy of width and height
w = 50;
h = 50;
health = 3;
//p1 = loadImage("");
}

void display() {
//image(p1,x,y)
fill(255);
ellipse(x,y,w,h);
}
void move() {}

void attack() {}

void fire() {}

void update() {} // can you put in some keypressed movement here for WASD or the arrowkeys ?

}
