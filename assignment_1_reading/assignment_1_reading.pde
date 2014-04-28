import processing.pdf.*;

void setup() {
  background(255);
  size(800, 800, PDF, "pkb.pdf");
}

void draw() {
  int x = 0;
  int columnWidth = 0;
  int baseWidth = 25;
  int spacing = 10;
  int rectHeight = 2;
  
  while(x < width) {
     columnWidth = (int (random(8) + 1)) * baseWidth;
     int yOffset = (int) random(10);
     
     if ((int) random(3) == 0) {
       drawColumnRectangle(x, yOffset, spacing, rectHeight, columnWidth);
     } else {
       drawColumnLine(x, yOffset, spacing, columnWidth);  
     }
     
     x += columnWidth;
  }
  // Exit the program 
  println("Finished.");
  exit();
}

void drawColumnLine(int xOffset, int yOffset, int spacing, int columnWidth) {
  for (int i = 0; i < height / spacing; i++) {
    int y = spacing * i + yOffset; 
    line(xOffset, y, xOffset + columnWidth, y);  
  }
}

void drawColumnRectangle(int xOffset, int yOffset, int spacing, int recHeight, int columnWidth) {
  for (int i = 0; i < height / spacing; i++) {
    int y = spacing * i + yOffset; 
    rect(xOffset, y, columnWidth, recHeight, 1,1,1,1);  
  }
}

