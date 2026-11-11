// Gideon Gordon
class Enemy{
 // Member Variable
 int x,y,w,h,health;
 PImage e1;

 // Constructor
Enemy(int x, int y) {
this.x=x;
this.y=y;
w = 50;
h = 50;
health = 3;
e1 = loadImage("Jello.gif");
}

// Member methods
void display() {
// TODO: replace circle with gif somehow :P
// image(e1,x,y);
 fill(33,222,23);
 ellipse(x,y,w,h);
}
void attack() {}
// TODO: Start an attack and finish attack a few seconds later.
  // Why: the attack is an action with its own timing and rules.
// Need to figure out how to make enemies interact with player
// Get enemies to attack only when it is allowed


}
