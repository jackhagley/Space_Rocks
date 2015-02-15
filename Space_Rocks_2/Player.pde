class Player {

  PVector loc;
  PVector ploc;
  PVector vel;
  PVector acc;
  float speed;
  float topspeed;

  //test

  ///test again

  PVector dir;//what is player looking at
  float ang_speed;//how fast turns


  Player() {
    loc = new PVector(sq/2, sq/2, sq/2);
    vel = new PVector(0, 0, 0);
    acc = new PVector(0, 0, 0);
    dir = new PVector(0, 0, 0);
    ploc = new PVector(0, 0, 0);
    speed = 5;
    ang_speed = 10;
  }

  void moveForwards() {
    //somehow wrong
    PVector temp = PVector.sub(dir, loc);
    temp.normalize();
    temp.mult(speed);
    applyForce(temp);
  }

  void moveBackwards() {

    PVector temp = PVector.sub(loc, dir);
    temp.normalize();
    temp.mult(speed);
    applyForce(temp);
  }

  void moveSideways(PVector side) {

    //    PVector temp = loc.cross(dir);
    //    temp.normalize();
    //    temp.mult(speed);
    //    applyForce(temp);

    side.normalize();
    side.mult(speed);
    applyForce(side);
  }

  void applyForce(PVector force) {
    //force.div(mass);
    acc.add(force);
  }


  void update() {
    ploc.set(loc);


    //update dir 
    //dir.sub(loc, ploc);
    //dir.normalize();




    // eyeX, eyeY, eyeZ
    //dir.x, dir.y, dir.z,

    if (mousey.nav) {
      PVector temp = mousey.navDist();
      temp.normalize();
      temp.mult(ang_speed);
      dir.sub(temp);
    } else {
      //dir.set(0,0);
    }

    vel.add(acc);
    loc.add(vel);
    vel.limit(speed);
    acc.mult(0);
    dir.limit(sq);

    //movement things
  }



  void display() {

    camera(
    loc.x, loc.y, loc.z, // eyeX, eyeY, eyeZ
    dir.x, dir.y, dir.z, // centerX, centerY, centerZ
    1.0, 1.0, 1.0); // upX, upY, upZ
    //camera things
    
    pushMatrix();
    translate(dir.x,dir.y,dir.x);
    fill(255);
    noStroke();
    sphere(10);
    popMatrix();
  }


  void run() {
    update();
    display();
  }
}

