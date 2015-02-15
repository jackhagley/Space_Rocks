class Rockfield {

  ArrayList<Rock> field;
  int n;

  Rockfield(int n_) {
    this.n = n_;
    field = new ArrayList<Rock>();
    populateField();
  }//new

  void populateField() {
    for (int i = 0; i<n; i++) {
      float randX = random(sq);
      float randY = random(sq);
      float randZ = random(sq);


      Rock temp2 = new Rock(randX, randY, randZ, 50);
      field.add(temp2);
    }
  }//popfield

  void checkForCollisions() {
    for (int i = 0; i<n; i++) {

      for (int j = 0; j<n; j++) {
        if (i!=j) {
          if (
          field.get(i).loc.dist(field.get(j).loc)
            <
            field.get(i).size/2+field.get(j).size/2
            )
            //+field.get(j).size/2)
          {

            field.get(i).highlighted = true;
          }
        }//i!=j
        }//j
      }//i
    }//check collisions

    void run() {

      checkForCollisions();

      for (int i = 0; i<n; i++) {
        field.get(i).run();
      }
    }
  }//rockfield

