//declare variables
int screen; //variable that changes canvas
int count = 12; //number of variables or the number of ellipses
int i = 0; //intitailize all the variables needed
float[] x = new float [count];
float[] y = new float [count];
float[] velX = new float [count];
float[] velY = new float [count];
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
  }
}