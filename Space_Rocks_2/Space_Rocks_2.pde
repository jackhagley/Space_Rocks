/*

 SPACE ROCKS
 
 (working title)
 
 This is a multiplayer game set in space
 Players carve pieces of space rock
 into whatever shapes they like
 
 There are no objectives or points
 
 ???
 The rocks have different properties
 according to materials
 
 ???
 The rocks self organise in space
 
 Environment
 • Getting comfortable in 3D space
 • Navigating in 3D
 
 
 Rocks
 • Simple movement
 • Carving / Modifying
 
 move camera only if the mouse is near the edge
 
 
 */

int sq = 800;
PVector centre;



Starfield milkyway;
Mousey mousey;
Player player;

void setup() {
  size(sq, sq, P3D);
  centre = new PVector(sq/2,sq/2);//only 2d for mouse
  milkyway = new Starfield(new PVector(0, 0),500);
  mousey = new Mousey();
  player = new Player();
}


void draw() {
  //ortho();
  background(0);
  milkyway.run();
  mousey.run();
  player.run();
}

