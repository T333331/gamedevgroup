// Diana Neal 
Item it1; 


void setup() {
size(100,100);
it1 = new Item(50,50);
}

void draw() {
background(123);
it1.display();
}



// Diana Neal 
class Item {
int x, y, w, h;
  PImage i1;

  Item(int x, int y) {
    // TODO: add item types by defining them as characters 
this.x = x;
this.y = y;
w = 50;
h = 50;
i1 = loadImage("Item.png"); 
}

  void display() {
   image(i1,x,y);
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

