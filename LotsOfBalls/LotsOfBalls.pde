//declare variables
float x, y, velX, velY, diam;
float x1, y1, velx1, vely1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;  
  x1 = width/2;
  y1 = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5); 
  velx1 = random(-5, 5);
  vely1 = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  ellipse(x1, y1, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;
  x1 += velx1;
  y1 += vely1;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
    if (x1 + diam/2 >= width) {
    velx1 = -abs(velx1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x1 - diam/2 <= 0) {
    velx1 = abs(velx1);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
    if (y1 + diam/2 >= height) {
    vely1 = -abs(vely1);
  } else if (y1 - diam/2 <= 0) {
    vely1 = abs(vely1);
  }
}