// Diana Neal 

class Item {
  Int x, y, w, h;
  PImage i1;

  Item () {
    // TODO: add item types by defining them as characters 
Item(int x, int y) {
this.x = x;
this.y = y;
w = 50;
h = 50;
i1 = loadImage(""); 
}
  }

  void display() {
    // TODO: add display behavior to the class, aka put in an image.
  }

  void effect () {
// TODO: add effects for specific items and powerups
  }

 boolean pickup = false 

if { TODO: add conditions for the item to be picked up and added to your inventory}

if pickup = true {
add item to inventory if conditions are met 
 }
}

