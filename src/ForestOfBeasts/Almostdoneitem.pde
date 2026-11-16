// Diana Neal

int gemcount, lootcount, healthcount, healthscore;
ArrayList<Loot> loots = new ArrayList<Loot>();
ArrayList<Gem> gems = new ArrayList<Gem>();
ArrayList<HP> hps = new ArrayList<HP>();
Player play1;
Timer ID;
PImage inv, loot, gem, hp,hbar1,hbar2, hbar3, hbar4, healthy, gbar1, gbar2, gbar3,gbar4, cbar1, cbar2,cbar3,cbar4;
PImage red,yellow,dead;

void setup() {
  size(500, 500);
  loots.add(new Loot(int(random(width)), 50));
  gems.add(new Gem(int(random(width)), 50));
  hps.add(new HP(int(random(width)), 50));
  ID = new Timer(1000);
  ID.start();
  play1 = new Player(75, 75);
  lootcount = 0;
  gemcount = 0;
  healthcount = 0;
  healthscore = 3;
  inv = loadImage("Item.png");
  loot = loadImage("Gold.png");
  gem = loadImage("Gem.png");
  hp = loadImage("HP.png");
  hbar1 = loadImage("HP1.png");
  hbar2 = loadImage("HP2.png");
  hbar3 = loadImage("HP3.png");
  hbar4 = loadImage("HP4.png");
  healthy = loadImage("health (1).png");
  red = loadImage("healthred.png");
  yellow = loadImage("healthyellow.png");
  dead = loadImage("dead.png");
  gbar1 = loadImage("G1.png");
  gbar2 = loadImage("G2.png");
  gbar3 = loadImage("G3.png");
  gbar4 = loadImage("G4.png");
  cbar1 = loadImage("G1 (1).png");
  cbar2 = loadImage("G2 (1).png");
  cbar3 = loadImage("G3 (1).png");
  cbar4 = loadImage("G4 (1).png");
}

void draw() {
  noCursor();
  background(123);
  
  if (healthscore == 3) {image(healthy, 75, 470);}
  if (healthscore == 1) {image(red, 75, 470);}
  if (healthscore == 2) {image(yellow, 75, 470);}
  if(healthscore == 0) {image(dead,75,470);}

  play1.move(mouseX, mouseY);
  play1.display();

  for (int i = 0; i < loots.size(); i++) {
    Loot t = loots.get(i);
    t.display();
    if (t.isHit(play1)) {
      if (lootcount<4) {
        println("new Item");
        loots.add(new Loot(int(random(width)), 50));
        lootcount++;
        loots.remove(t);
      }
    }
  }

  for (int i = 0; i < gems.size(); i++) {
    Gem g = gems.get(i);
    g.display();
    if (g.isHit(play1)) {
      if (gemcount<4) {
        println("new Item");
        gems.add(new Gem(int(random(width)), 50));
        gemcount++;
        gems.remove(g);
      }
    }
  }
  
    for (int i = 0; i < hps.size(); i++) {
    HP h = hps.get(i);
    h.display();
    if (h.isHit(play1)) {
      if (healthcount<4) {
        println("new Item");
        hps.add(new HP(int(random(width)), 50));
        healthcount++;
        hps.remove(h);
      }
    }
  }

  if (lootcount==1) {
    image(gbar1, 200, 475);
  }
  if (lootcount==2) {
    image(gbar2, 200, 475);
  }
  if (lootcount==3) {
    image(gbar3, 200, 475);
  }
  if (lootcount==4) {
    image(gbar4, 200, 475);
  }

  if (gemcount==1) {
    image(cbar1, 300, 475);
  }
  if (gemcount==2) {
    image(cbar2, 300, 475);
  }
  if (gemcount==3) {
    image(cbar3, 300, 475);
  }
  if (gemcount==4) {
    image(cbar4, 300, 475);
  }


if (healthcount==1) {
    image(hbar1, 250, 475);
  }
  if (healthcount==2) {
    image(hbar2, 250, 475);
  }
  if (healthcount==3) {
    image(hbar3, 250, 475);
  }
  if (healthcount==4) {
    image(hbar4, 250, 475);
  }
}

void keyPressed() {
  if (key == 'l' || key == 'L') {
    println("lootcount: " + lootcount);
    if(lootcount>0) {
        lootcount--;
    }
  }
  if (key == 'g' || key == 'G') {
    if(gemcount>0){
      gemcount--;
    
  }}
  if (key == 'p' || key == 'P') {
    if(healthscore<3){
    if(healthcount>0) {
      healthcount--;
      healthscore++;
    }
    }
  }
  
  if (key == 'o' || key == 'o') {
    if(healthscore<=3){
      if(healthscore>0){
    healthscore--;}
    }
}}
