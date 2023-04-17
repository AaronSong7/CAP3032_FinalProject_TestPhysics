class Player {
  float px, py;
  float vx, vy;
  float ax, ay;
  //float xSpeed, gravity;
  //boolean grounded;
  //boolean left = false, right = false;
  boolean moving;
  int keySet;
  
  Player(int xPos, int yPos, int playerKey) {
    px = xPos;
    py = yPos;
    vx = 0;
    vy = 0;
    ax = 0;
    ay = 0;
    keySet = playerKey;
    //xSpeed = 9;
    //gravity = 0.75;
    //grounded = false;
  }
  
  int getPlayerKey() {
    return keySet;
  }
  
  void jump() {
    vy -=10;
  }
  
  boolean simulate(boolean left, boolean right, boolean moving) {
    //if(up == true) {
    //  vy -=10;
    //  up = false;
    //}
    grounded = false;
    ax = 0;
    if((left == true && right == true) || left == false && right == false) {
      ax += 0;
    }
    else if(left == true) {
      ax -= .2;
    }
    else if(right == true) {
      ax += .2;
    }
    ay = .50;
    vx+=ax;
    vy+=ay;
    px+=vx;
    py+=vy;
    if( px<10){
      vx = 0;
      ax = 0;
      px = 10;
    }
    if( px>390){
      vx = 0;
      ax = 0;
      px = 390;
    }

    if (py>300 && px>100 && px<300) { 
      py=300; 
      vy=0; 
      ay=0;
    }
  
  // friction
    if(py == 300 && moving == false) {
      // immediate slow down
      vx = 0;
      grounded = true;
    
    //  // for gradual slow down
    //  //vx *= .95;
    //  //if(abs(vx) < 0.7) {
    //  //  vx = 0;
    //  //}
    
    }
    if( py>420 ){
      px = 200;
      py = -100;
      ax = 0;
      vx = 0;
      vy = 10;
    }
    render(px, py);
    return grounded;
  }
  
  void render(float px, float py) {
    //background(64);
    strokeWeight(3);
    stroke(0);
    line(100, 300, 300, 300);
    noStroke();
    fill(0, 255, 0);
    rect(px-10, py-20, 20, 20);
    circle(px, py, 5);
  }
  
  //void move1() {
  //  if(keyPressed && key == CODED) {
  //    if(keyCode == LEFT) {
  //      //vx -= 10;
  //      left = true;
  //    }
  //    if(keyCode == RIGHT) {
  //      //vx += 10;
  //      right = true;
  //    }
  //    if(grounded && keyCode == UP) {
  //      vy -= 10;
  //    }
  //  }
  //}
  
  //void move2() {
  //  if(keyPressed) {
  //    if(keyCode == 'A') {
  //      //vx -= 10;
  //      left = true;
  //    }
  //    if(keyCode == 'D') {
  //      vx += 10;
  //      right = true;
  //    }
  //    if(grounded && keyCode == 'W') {
  //      vy -= 10;
  //    }
  //  }
  //}
  
  //void update() {
  //  move1();
  //  if(!grounded) {
  //    vy += 0.2;
  //  }
  //  else {
  //    vy = 
  //  }
  //}
}
