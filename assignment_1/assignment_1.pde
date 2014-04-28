  background(0);
  color(255);
  size(640, 640);
  
  int centerX = width/2;
  int iceCreamWidth = 200;
  int verticalPadding = 200;
  
  int topConeWidth = 200;
  int topConeCornerRadius = 25;
  int topConeHeight = 60;
  
  ellipse(centerX, verticalPadding, iceCreamWidth, iceCreamWidth);
  rect(
    centerX - topConeWidth/2, 
    verticalPadding+iceCreamWidth/6, 
    topConeWidth, 
    topConeHeight, 
    0, 0, topConeCornerRadius, topConeCornerRadius
  );
  
  triangle(
    centerX - topConeWidth/2 + topConeCornerRadius, verticalPadding+iceCreamWidth/6 + topConeHeight, 
    centerX + topConeWidth/2 - topConeCornerRadius, verticalPadding+iceCreamWidth/6 + topConeHeight, 
    centerX, height - 175
  );
saveFrame("image.jpg");

