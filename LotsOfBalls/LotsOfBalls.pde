  float[] x = new float[5];
  float[] y = new float[5];
  float[] velx = new float[5];
  float[] vely = new float[5];
  float[] diam = new float[5];
// float x1, y1, velx1, vely1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  int i = 0; 
  while(i < 5){
  x[i] = random(width);
  y[i] = random(height);
  diam[i] = random(5,100);
  velx[i] = random(-5,5);
  vely[i] = random(5,20); 
  i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  int i = 0;
  while(i<5){
  //draw ball
  ellipse(x[i], y[i], diam[i], diam[i]);

  //add velocity to position
  x[i] += velx[i];
  y[i] += vely[i];

  //bounce ball if it hits walls
  if (x[i] + diam[i]/2 >= width) {
    velx[i] = -abs(velx[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velx[i] = abs(velx[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam[i]/2 >= height) {
    vely[i] = -abs(vely[i]);
  } else if (y[i] - diam[i]/2 <= 0) {
    vely[i] = abs(vely[i]);
  }
i++;
}
}