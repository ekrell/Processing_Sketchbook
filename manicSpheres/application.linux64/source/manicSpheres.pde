void setup() {
  size(500,500);
  background(60, 50, 50);
}

void draw() {
  
  float iHeight = 30;
  float iWidth = 30;
  int iCount = 0;
  for(int j = 0; iHeight < 500 - 30; j++) {
    iWidth = 30;
    for(int i = 0; iWidth < 500 - 30; i++) {
      fill(100, 100, 120);
      rect(iHeight, iWidth, 20, 20);
      
      if(mousePressed) {
        frameRate(17);
      } else {
        frameRate(6);
      }
      fill(223, 40, 37);
      ellipse(random(iHeight + 5, iHeight + 15), random(iWidth + 5, iWidth + 15), 7, 7);
      fill(23, 40, 210);      
      ellipse(random(iHeight + 5, iHeight + 15), random(iWidth + 5, iWidth + 15), 7, 7);

      iWidth += 30;
    }
    iHeight += 30;
  }
}
