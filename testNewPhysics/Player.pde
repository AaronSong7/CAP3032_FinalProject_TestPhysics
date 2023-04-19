class Player {
  float px, py;
  float vx, vy;
  float ax, ay;
  //float xSpeed, gravity;
  //boolean grounded;
  //boolean left = false, right = false;
  boolean moving;
  int keySet;
  Level lvl1Map = new Level(4);
  
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
    float prevPx, prevPy;
    prevPx = px;
    prevPy = py;
    
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
        
    // Bottom collision
    int xblkBotLoc, yblkBotLoc;
    xblkBotLoc = int(px/25);
    yblkBotLoc = int(py/25);  
    
    if(lvl1Map.lvl4[yblkBotLoc][xblkBotLoc] == 1 && prevPy < py) {
        py=(yblkBotLoc)*25; 
        vy=0; 
        ay=0;
        grounded = true;
    }
    
    // friction
    if(grounded == true && moving == false) {
        vx = 0;
    }
    
    // Top collision
    int xblkTopLoc, yblkTopLoc;
    xblkTopLoc = int(px/25);
    yblkTopLoc = int((py-20)/25);
    println(xblkTopLoc + " " + yblkTopLoc);
    
    if(lvl1Map.lvl4[yblkTopLoc][xblkTopLoc] == 1 && prevPy > py) {
        py=((yblkTopLoc + 1)*25)+20; 
        vy=0; 
        ay=0;
    }
    
    // Left collision
    int xblkLeftLoc, yblkLeftLoc;
    xblkLeftLoc = int((px-10)/25);
    yblkLeftLoc = int((py-10)/25);
    println(xblkLeftLoc + " " + yblkLeftLoc);
    
    if(lvl1Map.lvl4[yblkLeftLoc][xblkLeftLoc] == 1 && prevPx > px) {
        px=((xblkLeftLoc + 1)*25)+10; 
        vx=0; 
        ax=0;
    }
    
    // Right collision
    int xblkRightLoc, yblkRightLoc;
    xblkRightLoc = int((px+10)/25);
    yblkRightLoc = int((py-10)/25);
    println(xblkLeftLoc + " " + yblkLeftLoc);
    
    if(lvl1Map.lvl4[yblkRightLoc][xblkRightLoc] == 1 && prevPx < px) {
        px=((xblkRightLoc)*25)-10; 
        vx=0; 
        ax=0;
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
}
