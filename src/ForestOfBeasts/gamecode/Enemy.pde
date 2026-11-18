// Diana Neal
class Enemy {
  int x, y, w, h;
  PImage e1;

  Enemy(int etx, int ety) {
    this.x = etx;
    this.y = ety;
    w = 50;
    h = 50;
    e1 = loadImage("Enemy.png");
  }

  void display() {
    ellipse(x,y,50,50);
  }
  
  boolean isHit(Player p) {
    float dis = dist(x, y, p.x, p.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Arrow a) {
    float dis = dist(x, y, a.x, a.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}
