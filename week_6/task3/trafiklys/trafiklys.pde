void setup() {
  background(255);
  size(400, 800);
}

void draw() {
  drawTrafficLight();
  timer();
}

boolean topOn, midOn, botOn;
void drawTrafficLight() {
  fill (0);
  rect(5, 5, 390, 790);

  fill(0);
  ellipseMode(CENTER);

  if (topOn == true) {
    fill(255, 0, 0);
  } else {
    fill(125);
  }
  ellipse(width/2, 180, 200, 200);

  if (midOn == true) {
    fill(255, 255, 0);
  } else {
    fill(125);
  }
  ellipse(width/2, 400, 200, 200);

  if (botOn == true) {
    fill(0, 255, 0);
  } else {
    fill(125);
  }
  ellipse(width/2, 620, 200, 200);
}

int timer = 0;
int redLight = 0;
int yellowLight = 200;
int greenLight = 400;
int timeReset = 600;
void timer() {

  println(timer);

  timer++;
  if (timer > redLight && timer < greenLight) {
    topOn = true;
  } else {
    topOn = false;
  }
  println(topOn);
  if (timer > yellowLight && timer < greenLight) {
    midOn = true;
  } else {
    midOn = false;
  }
  println(midOn);
  if (timer >  greenLight) {
    botOn = true;
  } else {
    botOn = false;
  }
  println(botOn);
  if (timer > timeReset ) {
    timer = 0;
  }
}
