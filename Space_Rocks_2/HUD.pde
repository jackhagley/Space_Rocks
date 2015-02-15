class HUD {
  //player heads up display

  PGraphics pg;

  HUD() {
    pg = createGraphics(sq, sq, P2D);
  }

  void display() {

    pg.beginDraw();
    text(int(player.loc.x)+","+int(player.loc.y)+","+int(player.loc.z)+" LOC", 10, 20);
    pg.endDraw();
  }

  void update() {
  }

  void run() {
    update();
    display();
  }
}

