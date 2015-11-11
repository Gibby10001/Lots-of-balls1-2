//declare variables
<<<<<<< HEAD
int count = 2;
=======
int screen; //variable that changes canvas
int count = 12; //number of variables or the number of ellipses
int i = 0; //intitailize all the variables needed
>>>>>>> refs/remotes/origin/master
float[] x = new float [count];
float[] y = new float [count];
float[] velX = new float [count];
float[] velY = new float [count];
<<<<<<< HEAD
float diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  x[1] = width/2;
  y[1] = height/2;
  diam = 80;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  velX[1] = random(-6, 6);
  velY[1] = random(-6, 6);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam, diam);
  ellipse(x[1], y[1], diam, diam);
  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  x[1] += velX[1];
  y[1] += velY[1];
  //bounce ball if it hits walls
  if (x[0] + diam/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
    if (x[1] + diam/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam/2 <= 0) {
    velY[1] = abs(velY[1]);
=======
float[] diam = new float [count];
void setup() {
  //set size of canvas
  size(800, 600);
  //give each variables values
  while (i < count) {
    x[i] = width/2; 
    y[i] = height/2;
    diam[i] = 50; 
    velX[i] = random(-5, 5); 
    velY[i] = random(-6, 6);
    i++; //variable increases until reaches count
  }
  screen = 0;
}

void draw() {
  if (screen ==0) {
    background(0);
    fill(random(255), random(255), random(255));
    textSize(32);
    text("Click to bounce balls!", width/2-160, height/2);
  }
  if (mousePressed == true) {
    screen = 1;
  }
  if (screen == 1) {
    circle();
  }
}
void circle() {
  //draw background to cover previous frame
  background(0); 
  for (int i = 0; i < count; i++) { //using for loop variable is created and increased
    fill(random(255), random(255), random(255)); //fill of the ellipses
    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]); //draw the ellipses in relation to the i variable
    //add velocity to position
    x[i] += velX[i]; //increase x speed of ellipse
    y[i] += velY[i];  //increase y speed of ellipse
    //bounce ball if it hits walls of the canvas
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]); //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]); //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]); //if the ball hits the bottom wall, assign y velocity the negative version of itself
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]); //if the ball hits the top wall, assign x velocity the positive version of itself
    }
>>>>>>> refs/remotes/origin/master
  }
}