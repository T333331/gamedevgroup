class Player {
int x,y;
PImage p1;

Player (int x,int y){
this.x=x;
this.y=y;
p1 = loadImage("Sprite in 128 pixels (1).png");
}

void display() {
imageMode(CENTER);
image(p1,x,y);
}

void move(int tempX,int tempY) {
x = tempX;
y = tempY;
}

}
