int h2 = 50;
int h3 = 50;
int h4 = 50;
boolean go = true;
boolean go2 = true;
int icolour = 300;

void setup() {
  size(640, 360);
  colorMode(RGB);
  noStroke();
  background(75);
  h2 = 50;
}

void draw() {
  //string gr1a = "node1";
  //string gr1b = "node2";
  //string gr1c = "node3";
  //string gr1d = "node4";
  /*
  int igr1a = 23432;
  int igr1b = 7742;
  int igr1c = 22222;
  int igr1d = 462;
  
  float gr1_barA = igr1a / 45;
  float gr1_barB = igr1b / 45;
  float gr1_barC = igr1c / 45;
  float gr1_barD = igr1d / 45;
  */
  frameRate(50);
    
  int bar = 20;
  
  int h = 50;
  int w = 50;
  
  if(h2 < 232) {
    h2 += 1;
  } else {
    h2 -= 1;
  }
  
  if(h3 < 233 && go) {
    h3 += 1;
    if(!(h3 < 232)) { go = false; }
  } else {
    h3 -= 1;
    if(h3 == 50) { go = true; }
  }
  
  
  if(mousePressed) {
      if(h4 < 233 && go2) {
      h4 += 1;
      if(!(h4 < 232)) { go2 = false; }
    } else {
      h4 -= 1;
      if(h4 == 50) { go2 = true; }
    }
  }
  
  
  
  fill(72, 123, 72);
  rect(h, w, 202, bar, 300);
  fill(123, 72, 72);
  rect(h2, w, 20, bar, 300);
  
  
  fill(72, 123, 72);
  rect(h, w * 1.5, 202, bar, 300);
  fill(123, 72, 72);
  rect(h3, w * 1.5, 20, bar, 300);
  
  fill(72, 123, 72);
  rect(h, w * 2, 202, bar, 300);
  if(h4 % 2 == 0) {
    fill(123, 72, 72);
  } else {
    fill(220, 72, 72);
  }
  rect(h4, w * 2, 20, bar, 300);
  

  }
  

