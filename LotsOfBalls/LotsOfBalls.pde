  float[] x = new float[2];
  float[] y = new float[2];
  float[] velx = new float[2];
  float[] vely = new float[2];
  float[] diam = new float[2];
// float x1, y1, velx1, vely1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables

  x[0] = width/2;
  y[0] = height/2;  
  diam[0] = 80;
  velx[0] = random(-5, 5);
  vely[0] = random(-5, 5); 
  
  x[1] = width/4;
  y[1] = height/4;  
  diam[1] = 40;
  velx[1] = random(-10, 10);
  vely[1] = random(-10, 10); 
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);

  //add velocity to position
  x[0] += velx[0];
  y[0] += vely[0];
  
  x[1] += velx[1];
  y[1] += vely[1];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velx[0] = -abs(velx[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velx[0] = abs(velx[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    vely[0] = -abs(vely[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    vely[0] = abs(vely[0]);
  }
  
  if (x[1] + diam[1]/2 >= width) {
    velx[1] = -abs(velx[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[1]/2 <= 0) {
    velx[1] = abs(velx[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
    vely[1] = -abs(vely[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    vely[1] = abs(vely[1]);
  }
}