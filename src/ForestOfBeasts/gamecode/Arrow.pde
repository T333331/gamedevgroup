class Arrow {
  PImage a1;
  int x, y, w, h, speed, damage;

  Arrow(int x, int y) {
    this.x = x;
    this.y = y;
    w = 10;
    h = 10;
    speed = 5;
    a1 = loadImage("Arrow.png");
  }

  void display() {
    image(a1, x, y);
  }

  void move() {
    y = y - speed;
  }

  boolean isOffScreen() {
    if (y<-50) {

      return true;
    } else {
      return false;
    }
  }
}
