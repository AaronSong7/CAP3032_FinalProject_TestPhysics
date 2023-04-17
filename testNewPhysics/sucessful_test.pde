//Level lvl1Map;
//float px = 200;
//float py = 300;
//float vx = 0;
//float vy = 0;
//float ax = 0;
//float ay = 0;

//float p2x = 200;
//float p2y = 300;
//float v2x = 0;
//float v2y = 0;
//float a2x = 0;
//float a2y = 0;

////PImage Map;

//Player player1;

//boolean[] keys = { false, false, false, false};
//boolean moving1 = false, moving2 = false;
//boolean loadlvl1 = false;

//void setup() {
//  size(1000,700);
//  lvl1Map = new Level(4);
//  player1 = new Player(200,300,1);
//}

//void draw() {
//  if(loadlvl1 == false) {
//    lvl1Map.loadLevel();
//    save("lvl1.png");
//    loadlvl1 = true;
//  }
//  image(loadImage("lvl1.png"),0,0);
  
//  strokeWeight(3);
//  stroke(0);
//  line(100, 300, 300, 300);
  
//  simulate();
//  render();
//  simulate2();
//  render2();
//}

//void simulate() {
//  ax = 0;
//  ax += keys[0]?-.2:0;
//  ax += keys[1]?.2:0;
//  ay = .5;
//  vx+=ax;
//  vy+=ay;
//  px+=vx;
//  py+=vy;
//  if( px<10){
//    vx = 0;
//    ax = 0;
//    px = 10;
//  }
//  if( px>390){
//    vx = 0;
//    ax = 0;
//    px = 390;
//  }

//  if (py>300 && px>100 && px<300) { 
//    py=300; 
//    vy=0; 
//    ay=0;
//  }
  
//  // friction
//  if(py == 300 && moving1 == false) {
//    // immediate slow down
//    vx = 0;
    
//    // for gradual slow down
//    //vx *= .95;
//    //if(abs(vx) < 0.7) {
//    //  vx = 0;
//    //}
    
//  }
//  if( py>420 ){
//    px = 200;
//    py = -100;
//    ax = 0;
//    vx = 0;
//    vy = 10;
//  }
//}

//void simulate2() {
//  a2x = 0;
//  a2x += keys[2]?-.2:0;
//  a2x += keys[3]?.2:0;
//  a2y = .5;
//  v2x+=a2x;
//  v2y+=a2y;
//  p2x+=v2x;
//  p2y+=v2y;
//  if( p2x<10){
//    v2x = 0;
//    a2x = 0;
//    p2x = 10;
//  }
//  if( p2x>390){
//    v2x = 0;
//    a2x = 0;
//    p2x = 390;
//  }

//  if (p2y>300 && p2x>100 && p2x<300) { 
//    p2y=300; 
//    v2y=0; 
//    a2y=0;
//  }
  
//  // friction
//  if(p2y == 300 && moving2 == false) {
//    // immediate slow down
//    v2x = 0;
    
//    // for gradual slow down
//    //vx *= .95;
//    //if(abs(vx) < 0.7) {
//    //  vx = 0;
//    //}
    
//  }
//  if( p2y>420 ){
//    p2x = 200;
//    p2y = -100;
//    a2x = 0;
//    v2x = 0;
//    v2y = 10;
//  }
//}

//void render() {
//  noStroke();
//  fill(0, 255, 0);
//  rect(px-10, py-20, 20, 20);
//  circle(px, py, 5);
//}

//void render2() {
//  noStroke();
//  fill(0, 255, 0);
//  rect(p2x-10, p2y-20, 20, 20);
//  circle(p2x, p2y, 5);
//}

//void keyPressed(){
//  if( keyCode == LEFT ){
//    keys[0] = true;
//  }
//  if( keyCode == RIGHT ){
//    keys[1] = true;
//  }
//  if( keyCode == UP ){
//    vy = -10;
//  }
//  if(keyCode == LEFT || keyCode == RIGHT || keyCode == LEFT) {
//    moving1 = true;
//  }
//  if( keyCode == 'A' ){
//    keys[2] = true;
//  }
//  if( keyCode == 'D' ){
//    keys[3] = true;
//  }
//  if( keyCode == 'W' ){
//    v2y = -10;
//  }
//  if(keyCode == 'A' || keyCode == 'D' || keyCode == 'W') { // maybe take off up
//    moving2 = true;
//  }
//}

//void keyReleased(){
//  if( keyCode == LEFT ){
//    keys[0] = false;
//  }
//  if( keyCode == RIGHT ){
//    keys[1] = false;
//  }
//  if(keys[0] == false && keys[1] == false) {
//    moving1 = false;
//  }
//  if( keyCode == 'A' ){
//    keys[2] = false;
//  }
//  if( keyCode == 'D' ){
//    keys[3] = false;
//  }
//  if(keys[2] == false && keys[3] == false) {
//    moving2 = false;
//  }
//}
