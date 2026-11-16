// Diana Neal
class Loot {
  int x, y, w, h;
  PImage i1;

  Loot(int itx, int ity) {
    this.x = itx;
    this.y = ity;
    w = 50;
    h = 50;
    i1 = loadImage("Gold (1).png");
  }

  void display() {
    image(i1, x, y);
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
