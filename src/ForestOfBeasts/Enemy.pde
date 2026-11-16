// Gideon Gordon
class Enemy{
 // Member Variable
 int x,y,w,h,health;
 PImage e1;
}


 // Constructor
Enemy(int x, int y) {
this.x=x;
this.y=y;
w = 50;
h = 50;
health = 3;
PImage[Jello.gif] animation;
Gif loopingGif;
Gif nonLoopingGif;
boolean pause = false;
}

// Member methods
void display() {
background(255 / (float)height * mouseY);
  image(loopingGif, 10, height / 2 - loopingGif.height / 2);
  image(nonLoopingGif, width/2 - nonLoopingGif.width/2, height / 2 - nonLoopingGif.height / 2);
  image(animation[(int) (animation.length / (float) (width) * mouseX)], width - 10 - animation[0].width, height / 2 - animation[0].height / 2);
}

void attack() {}
// TODO: Start an attack and finish attack a few seconds later.
  // Why: the attack is an action with its own timing and rules.
// Need to figure out how to make enemies interact with player
// Get enemies to attack only when it is allowed


}
