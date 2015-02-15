class Rock {

  PVector loc;
  PVector vel;
  PVector acc;

  float size;//replace this with something nicer
  float speed;//this is top speed, don’t confuse with vel

  boolean highlighted;

  color ROCK = color (20, 222, 20);
  color HIGHLIGHT= color (33, 33, 33);


  Rock(float x, float y, float z, float size_) {


    loc = new PVector(x, y, z);
    vel = new PVector(0, 0, 0);
    acc = new PVector(0, 0, 0); 
    this.size = size_;
    speed = 10; //for now static, later determined by materials etc
    highlighted = false;
  }

  void update() {  
    vel.add(acc);
    loc.add(vel);
    vel.limit(speed);
    acc.mult(0);
  }

  void display() {
    lights();
    //println("bombing");
    pushMatrix();

    if (!highlighted) {
      fill(ROCK);
    } else {
      fill(HIGHLIGHT);
    }
    noStroke();
    translate(loc.x, loc.y, loc.z);
    sphere(size);
    popMatrix();
  }

  void highlight() {
  }

  void run() {
    update();
    display();
  }
}

