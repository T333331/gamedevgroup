// Diana Neal
class Gem {
  int x, y, w, h;
  PImage g1;

  Gem(int gtx, int gty) {
    this.x = gtx;
    this.y = gty;
    w = 50;
    h = 50;
    g1 = loadImage("Gem.png");
  }

  void display() {
    image(g1, x, y);
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
