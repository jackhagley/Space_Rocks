class Player {

  PVector loc;
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
    vel = new PVector(0,0,0);
    acc = new PVector(0,0,0);
    dir = new PVector(0, 0, 0);
    speed = 5;
    ang_speed = 10;
  }

  void moveForwards() {
    //somehow wrong
    PVector temp = PVector.sub(dir,loc);
    temp.normalize();
    temp.mult(speed);
    applyForce(temp);
  }
  
    void moveBackwards() {

    PVector temp = PVector.sub(loc,dir);
    temp.normalize();
    temp.mult(speed);
    applyForce(temp);
  }


  void applyForce(PVector force) {
    //force.div(mass);
    acc.add(force);
  }


  void update() {
    
    
    //update dir so it is always just ahead of the camera
    
    
    
    
text(loc.x+","+loc.y+","+loc.z+" LOC",10,20);

// eyeX, eyeY, eyeZ
    //dir.x, dir.y, dir.z,

    if (mousey.nav) {
      PVector temp = mousey.navDist();
      temp.normalize();
      temp.mult(ang_speed);
      dir.sub(temp);
    }else{
      //dir.set(0,0);
      
      
    }

    vel.add(acc);
    loc.add(vel);
    vel.limit(speed);
    acc.mult(0);

    //movement things
  }



  void display() {

    camera(
    loc.x, loc.y, loc.z, // eyeX, eyeY, eyeZ
    dir.x, dir.y, dir.z, // centerX, centerY, centerZ
    0.0, 1.0, 0.0); // upX, upY, upZ
    //camera things
  }


  void run() {
    update();
    display();
  }
}

