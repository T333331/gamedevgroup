// Diana Neal 
Item it1; 


void setup() {
size(500,500);
it1 = new Item();
}

void draw() {
background(123);
it1.display();
}



// Diana Neal 
int x, y, w, h;
  PImage i1;

class Item {
  Item() {
    // TODO: add item types by defining them as characters 
w = 50;
h = 50;
i1 = loadImage("Item.png"); 
}

  void display() {
    // TODO: add display behavior to the class, aka put in an image.
    fill(224,83,55);
    rect(50,50,50,50);
  }

  void effect () {
// TODO: add effects for specific items and powerups
  }

// boolean pickup = false 

//if { TODO: add conditions for the item to be picked up and added to your inventory}

//if pickup = true {
//add item to inventory if conditions are met 
// }
}

