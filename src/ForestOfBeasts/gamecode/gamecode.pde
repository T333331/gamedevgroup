// Zoe Abraham

import gifAnimation.*;
int lootcount, healthcount, iscore, edrop, health;
ArrayList<Loot> loots = new ArrayList<Loot>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
ArrayList<Arrow> arrows = new ArrayList<Arrow>();
ArrayList<HP> hps = new ArrayList<HP>();
PImage inv, loot, gem, hp, inv3, inv4, healthy, screen;
int WorldW = 2400;
int WorldH = 1400;  // World width and height might change later
PImage bg;

Player p1;
int CamX, CamY;

boolean isStarted;

void setup() {
  size(2400, 1400);
  bg = loadImage("level one background aaa.png");
  WorldW = bg.width;
  WorldH = bg.height;
  p1 = new Player(WorldW/ 2, WorldH /2);
  println(bg.width, bg.height);
  isStarted = false;
  size(1200, 800);
  enemies.add(new Enemy(int(random(width)), 50));
  lootcount = 0;
  healthcount = 0;
  iscore = 0;
  edrop = 0;
  health = 3;
  loot = loadImage("Gold.png");
  screen = loadImage("StartScreen.png");
  healthy = loadImage("health (1).png");
  hp = loadImage("HP.png");
} // end of void setup



void draw() {

  p1.update();

  CamX= p1.x - width / 2;
  CamY= p1.y - height / 2;  // make it so that player is in the center of the screen

  CamX = constrain(CamX, 0, WorldW - width);
  CamY = constrain(CamY, 0, WorldH - height); // Keeps the camera only showing whats inside the world
  // constrain used to ensure that value dosent exceed max and minimum - got the description from processing.org

//  background(bg);
  translate(-CamX, -CamY); // slide the world oposite to the camera(Cam) movement so the the player seems to move along the world
  //just check processing.org- the description for translate is rlly long.

  //drawGrid(); // only here to ensure the camera is actually scrolling- remove this once we have a background in place.
  imageMode(CORNER);
  image(bg,0,0);
  p1.display(); // Do not remove this this is actually for drawing the player on the screen
  
  p1.move();
  image(healthy, 75, 470);
  noCursor();
  for (int i = 0; i < arrows.size(); i++) {
    println(arrows.size());
    Arrow a = arrows.get(i);
    for (int j = 0; j < enemies.size(); j++) {
      Enemy e = enemies.get(j);
      if (e.isHit(a)) {
        arrows.remove(a);
        enemies.remove(e);
        edrop++;
        enemies.add(new Enemy(int(random(width)), 50));
        if (edrop<=1) {
          iscore+=random(int(10));
          if (random(10) <=5) {
            loots.add(new Loot(int(random(width)), 50));
          }
          if (random(10) >=6) {
            hps.add(new HP(int(random(width)), 50));
          }
        }
      }
    }
    a.display();
    a.move();
  }
  for (int i = 0; i < loots.size(); i++) {
    Loot t = loots.get(i);
    t.display();
    if (t.isHit(p1)) {
      if (lootcount<4) {
        println("new Item");
        lootcount++;
        loots.remove(t);
        edrop=0;
      }
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Enemy e = enemies.get(i);
    e.display();
    if (e.isHit(p1)) {
      enemies.add(new Enemy(int(random(width)), 50));
      enemies.remove(e);
      health--;
    }
  }
  for (int i = 0; i < hps.size(); i++) {
    HP h = hps.get(i);
    h.display();
    if (h.isHit(p1)) {
      if (healthcount<4) {
        println("new Item");
        healthcount++;
        hps.remove(h);
        edrop = 0;
      }
    }
  }

  if (lootcount>=1) {
    image(loot, 200, 475);
    edrop = 0;
  }
  if (lootcount>=2) {
    image(loot, 225, 475);
    edrop = 0;
  }
  if (lootcount>=3) {
    image(loot, 250, 475);
    edrop = 0;
  }
  if (lootcount>=4) {
    image(loot, 275, 475);
    edrop = 0;
  }
  if (isStarted == false) {
    image(screen, 50, 50);
  }
  if (health==0) {
    isStarted = false;
  }
  text(":"+health, 50, 50);

  if (healthcount>=1) {
    image(hp, 300, 475);
    edrop = 0;
  }
  if (healthcount>=2) {
    image(hp, 325, 475);
    edrop = 0;
  }
  if (healthcount>=3) {
    image(hp, 350, 475);
    edrop = 0;
  }
  if (healthcount>=4) {
    image(hp, 375, 475);
    edrop = 0;
  }
} //end of void draw

void keyPressed() {
  if (key == 'a') {
    p1.isMovingLeft = true;
  }
  if (key == 'd') {
    p1.isMovingRight = true;
  }
  if (key == 'w') {
    p1.isMovingUp = true;
  }
  if (key == 's') {
    p1.isMovingDown = true;
  }
  if (key == 'l' || key == 'L') {
    println("lootcount: " + lootcount);
    if (lootcount>0) {
      lootcount--;
    }
  }
  if (key == 'p' || key == 'P') {
    if (healthcount>0) {
      if (health<3) {
        health++;
        healthcount--;
      }
    }
  }
}

void keyReleased() {
  if (key == 'a') {
    p1.isMovingLeft = false;
  }
  if (key == 'd') {
    p1.isMovingRight = false;
  }
  if (key == 'w') {
    p1.isMovingUp = false;
  }
  if (key == 's') {
    p1.isMovingDown = false;
  }
}

void mousePressed() {
isStarted = true;
}
