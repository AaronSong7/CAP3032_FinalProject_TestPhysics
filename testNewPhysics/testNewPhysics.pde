Level lvl1Map;
float px = 200;
float py = 300;
float vx = 0;
float vy = 0;
float ax = 0;
float ay = 0;

//PImage Map;

Player player1;

boolean[] keys = { false, false, false, false, false, false};
boolean moving1 = false, moving2 = false;
boolean loadlvl1 = false;
boolean jumping = false;
boolean grounded;

void setup() {
  size(1000,700);
  lvl1Map = new Level(4);
  player1 = new Player(200,300,1);
}

void draw() {
  if(loadlvl1 == false) {
    lvl1Map.loadLevel();
    save("lvl1.png");
    loadlvl1 = true;
  }
  image(loadImage("lvl1.png"),0,0);
  
  strokeWeight(3);
  stroke(0);
  line(100, 300, 300, 300);
  grounded = player1.simulate(keys[0], keys[1], moving1);
  if(grounded) {
    jumping = false;
  }
  
}

void keyPressed(){
  if( keyCode == LEFT ){
    keys[0] = true;
  }
  if( keyCode == RIGHT ){
    keys[1] = true;
  }
  if( keyCode == UP ){
    keys[2] = true;
    if(!jumping) {
      player1.jump();
      jumping = true;
    }
  }
  if(keyCode == LEFT || keyCode == RIGHT || keyCode == LEFT) {
    moving1 = true;
  }
  if( keyCode == 'A' ){
    keys[3] = true;
  }
  if( keyCode == 'D' ){
    keys[4] = true;
  }
  if( keyCode == 'W' ){
    keys[5] = true;
    
  }
  if(keyCode == 'A' || keyCode == 'D' || keyCode == 'W') { // maybe take off up
    moving2 = true;
  }
}

void keyReleased(){
  if( keyCode == LEFT ){
    keys[0] = false;
  }
  if( keyCode == RIGHT ){
    keys[1] = false;
  }
  if(keys[0] == false && keys[1] == false) {
    moving1 = false;
  }
  if( keyCode == 'A' ){
    keys[3] = false;
  }
  if( keyCode == 'D' ){
    keys[4] = false;
  }
  if(keys[3] == false && keys[4] == false) {
    moving2 = false;
  }
}
