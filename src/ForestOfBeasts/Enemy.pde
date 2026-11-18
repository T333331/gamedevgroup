// Gideon Gordon
class Enemy {
  // Member Variables
  int x, y, w, h, health;
  PImage e1;
  boolean dead = false;

  // Attack variables
  int attackRange = 32;          // how close the player must be (pixels)
  int attackInterval = 5000;     // 5 seconds in milliseconds
  int hitboxDuration = 300;      // how long the hitbox stays visible (ms)
  int hitboxSize = 64;           // size of the hitbox square
  int damage = 1;

  int lastAttackTime = 0;
  int hitboxStartTime = 0;
  boolean hitboxActive = false;
  boolean damageDealt = false;   // makes sure one hitbox only hurts once

  // Constructor
  Enemy(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    health = 3;

    e1 = loadImage("Jello.gif");
  }

  // Member methods
  void display() {
    if (health <= 0) {
      death();
      return;
    }

    image(e1, x, y, w, h);
  }

  // Call this every frame, passing in your player
  void attack(Player p) {
    if (dead) return;

    // Distance between enemy center and player center
    float d = dist(x + w/2, y + h/2, p.x + p.w/2, p.y + p.h/2);

    // Start a new hitbox if player is close and 5 seconds have passed
    if (!hitboxActive && d <= attackRange && millis() - lastAttackTime >= attackInterval) {
      hitboxActive = true;
      damageDealt = false;
      hitboxStartTime = millis();
      lastAttackTime = millis();
    }

    if (hitboxActive) {
      // Hitbox is centered on the enemy
      float hx = x + w/2 - hitboxSize/2;
      float hy = y + h/2 - hitboxSize/2;

      // Draw it (remove this for an invisible hitbox)
      noFill();
      stroke(255, 0, 0);
      rect(hx, hy, hitboxSize, hitboxSize);

      // Rectangle-vs-rectangle collision with the player
      boolean hit = hx < p.x + p.w && hx + hitboxSize > p.x &&
                    hy < p.y + p.h && hy + hitboxSize > p.y;

      if (hit && !damageDealt) {
        p.health -= damage;
        damageDealt = true;
      }

      // Turn the hitbox off after its duration
      if (millis() - hitboxStartTime >= hitboxDuration) {
        hitboxActive = false;
      }
    }
  }

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
