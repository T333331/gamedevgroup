// Diana Neal
class HP {
  int x, y, w, h;
  PImage h1;

  HP(int htx, int hty) {
    this.x = htx;
    this.y = hty;
    w = 50;
    h = 50;
    h1 = loadImage("HP (1).png");
  }

  void display() {
    image(h1, x, y);
  }
  
  boolean isHit(Player p) {
    float dis = dist(x, y, p.x, p.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}
