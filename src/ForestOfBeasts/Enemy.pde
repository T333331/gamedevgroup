// Gideon Gordon
class Enemy {
  // Member Variables
  int x, y, w, h, health;
  PImage e1;
  boolean dead = false;

  // Constructor
  Enemy(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    health = 3;

    // Load animated GIF
    e1 = loadImage("Jello.gif");
  }

  // Member methods
  void display() {
    if (health <= 0) {
      death();
      return;
    }

    // Display animated GIF
    image(e1, x, y, w, h);
  }

  void attack() {}
  void fire() {}
  void jump() {}

  void death() {
    if (!dead) {
      dead = true;

      // 1 in 5 chance to drop an item
      if (random(5) < 1) {
        Item dropped = new Item(x, y);
        // Add item to your game's item list here
      }
    }
  }
}
