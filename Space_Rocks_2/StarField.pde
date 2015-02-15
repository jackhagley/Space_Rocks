class Starfield {

  PVector origin;
  PVector[] stars;
 int n;

  Starfield(PVector origin_, int number) {

    this.origin = origin_;
    this.n = number;

    stars = new PVector[n];

    stroke(255);
    for (int i = 0; i<stars.length; i++) {
      float randX = random(sq);
      float randY = random(sq);
      float randZ = random(sq);

      stars[i] = new PVector (randX, randY, randZ);
    }
  }

  void update() {
  }
  void display() {
    
    for (int i = 0; i<stars.length; i++) {

    stroke(255);
    strokeWeight(3);
    
    pushMatrix();
    translate(stars[i].x, stars[i].y, stars[i].z);
    point(0, 0);
    //box(10);
    
     popMatrix();
    }
  }

  void run() {
    update();
    display();
  }
}//STARFIELD

