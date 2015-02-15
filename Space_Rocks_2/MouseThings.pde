class Mousey {
  PVector loc;
  boolean nav;
  boolean carve;

  float navZone;

  Mousey() {
    loc = new PVector(mouseX, mouseY);
    navZone = sq/2.5;
  }

  void run() {
    update();
    display();
  }

  void update() {
    loc.set(mouseX, mouseY);
    nav = navMouse();
  }

  void display() {
    //debug only
    if (nav) {
      fill(200, 25, 25);
      noStroke();
      //ellipse(loc.x, loc.y, 30, 30);
    }
  }

  PVector navDist() {
  //remember to only use this in the nav zone
    PVector temp = PVector.sub(centre,loc);
    return temp;
    
    
    
  }
  
  

  boolean navMouse() {
    if (centre.dist(loc)>navZone) {
      return true;
    } else {
      return false;
    }
  }
}

