class Human {
  int xPos;
  int yPos;
  int w;
  int h;
  boolean gender;

  Human(int xPos, int yPos, int w, int h, boolean gender) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.h = h;
    this.w = w;
    this.gender = gender;
  }

  void render() {
    head();
    body();
  }

  void head() {
    rectMode(CENTER);
    rect(xPos, yPos-h/2, 20, 20);
  }
  void body() {
    rectMode(CENTER);
    rect(xPos, yPos, w, h);
    if (gender == true) {
      println("its a boy");
    } else {
      println("its a girl");
    }
    rectMode(CORNER);
  }
}
