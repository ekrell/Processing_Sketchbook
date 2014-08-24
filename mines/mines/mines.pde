
//P1 Variables
int xCoord = 200;
int yCoord = 200;
int bombCount = 0;
boolean hit = false;
int safe = 0;

int[] bombX = new int[5];
int[] bombY = new int[5];



//P2 Variables
int xCoordP2 = 210;
int yCoordP2 = 220;
int bombCountP2 = 0;
boolean hitP2 = false;
int safeP2 = 0;

int[] bombXP2 = new int[5];
int[] bombYP2 = new int[5];


void setup() {
  noSmooth();
  size(400, 400);
}

void draw() {
  background(102);
  noStroke();
  

  for(int i = 0; i < 5; i++)
  {
    //draw mines
    fill(200,100,100);
    ellipse((float)bombX[i], 
    (float)bombY[i], 5, 5);
    
    fill(200,100,100);
    ellipse((float)bombXP2[i],
    (float)bombYP2[i], 5, 5);
    
    //hit detection
    if(safe <= 0) {
      
      if  ( bombX[i] + 2 >= xCoord && bombX[i] + 2 <= xCoord + 10 )  {
        if ( bombY[i] + 2 >= yCoord && bombY[i] + 2 <= yCoord + 10 )  {
            hit = true;
        }
      }
        if  ( bombXP2[i] + 2 >= xCoord && bombXP2[i] + 2 <= xCoord + 10 )  {
          if ( bombYP2[i] + 2 >= yCoord && bombYP2[i] + 2 <= yCoord + 10 )  {
            hit = true;
        }
      }
    }
    
    
    //draw mines for P2
    fill(200,100,100);
    ellipse((float)bombXP2[i], 
    (float)bombYP2[i], 5, 5);
    
    //hit detection for P2
    if(safeP2 <= 0) {
      
      if  ( bombXP2[i] + 2 >= xCoordP2 && bombXP2[i] + 2 <= xCoordP2 + 10 )  {
        if ( bombYP2[i] + 2 >= yCoordP2 && bombYP2[i] + 2 <= yCoordP2 + 10 )  {
            hitP2 = true;
        }
      }
      if  ( bombX[i] + 2 >= xCoordP2 && bombX[i] + 2 <= xCoordP2 + 10 )  {
        if ( bombY[i] + 2 >= yCoordP2 && bombY[i] + 2 <= yCoordP2 + 10 )  {
            hitP2 = true;
        }
      }
    }
    
    
  }

  //player square
  
  if(hit) {
  fill(255,100,100); 
  } else {
  fill(100,100,255);
  }  
  rect((float)xCoord, (float)yCoord, (float)10, (float)10 );
  
  
  //player square TWO
  
  if(hitP2) {
  fill(255,100,100); 
  } else {
  fill(100,255,100);
  }  
  rect((float)xCoordP2, (float)yCoordP2, (float)10, (float)10 );
  
  
  
  //bgLvlOne
  fill(80);
  rect(5, 11.0, 150, 20);
  rect(45, 70.0, 150, 20);
  rect(100, 25.0, 150, 20);
  rect(70, 100.0, 150, 20);
  rect(-5, 50.0, 150, 20);
  rect(160, 90.0, 150, 20);
  rect(60.35, 25.0, 150, 20);
  rect(100, -5.0, 150, 20);
  rect(230.0, 40.0, 150, 20);
  rect(200.35, 60.0, 150, 20);
  rect(170.0, 130.0, 150, 20);
  rect(37, 200, 150, 20);
  rect(100.0, 230, 150, 20);
  rect(-49.0, 345.0, 150, 20);
  rect(-20.0, 330.0, 150, 20);
  rect(49, 300, 150, 20);
  rect(160.0, 245.0, 150, 20);
  rect(177, 360.0, 150, 20);
  rect(120, -5.0, 150, 20);
  rect(300.0, 320.0, 150, 20);
  rect(250, 200.0, 150, 20);
  rect(170.0, 130.0, 150, 20);
  
  

}
  
  
  
  
  
  //Key controls
  void keyPressed() {
    
    
  //Player One Key Controls
  if (key == CODED) {
    if (keyCode == UP) {
      yCoord -= 5;
      safe--;
    } else if (keyCode == DOWN) {
      yCoord += 5;
      safe--;
    }
      else if (keyCode == RIGHT) {
       xCoord += 5;
       safe--;
    } else if (keyCode == LEFT) {
      xCoord -= 5;
      safe--;
    }

  }

    if (key == '/') {
      if((bombCount + 1 > 5)) {
      bombCount = 0;
        bombX[bombCount] = xCoord + 5;
        bombY[bombCount] = yCoord + 5;
        bombCount++;
        safe = 5;
      } else {
        bombX[bombCount] = xCoord + 5;
        bombY[bombCount] = yCoord + 5;
        bombCount++;
        safe = 5;
      }
    }
  
  if (key == CODED) {
    if (keyCode == SHIFT) {
      hit = false;
      hitP2 = false;
    }
  }
  
  
  
  //Player Two Key Controls
    if (key == 'w') {
      yCoordP2 -= 5;
      safeP2--;
    } else if (key == 's') {
      yCoordP2 += 5;
      safeP2--;
    }
      else if (key == 'd') {
       xCoordP2 += 5;
       safeP2--;
    } else if (key == 'a') {
      xCoordP2 -= 5;
      safeP2--;
    }
 
 
    if (key == 'q') {
      if((bombCountP2 + 1 > 5)) {
      bombCountP2 = 0;
        bombXP2[bombCountP2] = xCoordP2 + 5;
        bombYP2[bombCountP2] = yCoordP2 + 5;
        bombCountP2++;
        safeP2 = 5;
      } else {
        bombXP2[bombCountP2] = xCoordP2 + 5;
        bombYP2[bombCountP2] = yCoordP2 + 5;
        bombCountP2++;
        safeP2 = 5;
      }

    }
  
  
}




