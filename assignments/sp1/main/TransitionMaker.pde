class TransitionMaker {
  int size = 1024;
  int l = 1; //length of static
  int x, y, w = 0, h = 0; //position of static on screen

  int transitionTimer = 0;
  int transitionTimerEnd = 60;
  int transitionTimerReset = 0;

  int prevGame;
  boolean goBackToGridGame = false;

  void render () {
    timer();
    glitchEffect();
  }

  void glitchEffect() {
    rectMode(CENTER);
    for (int i=0; i <= l; i++) {
      stroke(random(0, 255));
      x = (int)random(0, size);
      y = (int)random(0, size);
      stroke((int)random(0, 255));
      fill((int)random(0, 255));
      rect(x, y, w+(int)random(0, 500), w+(int)random(0, 500));
    }
    for (int i=0; i <= l; i++) {
      stroke(random(0, 255));
      x = (int)random(0, size);
      y = (int)random(0, size);
      stroke((int)random(0, 255));
      fill((int)random(0, 255));
      rect(x, y, w+(int)random(0, 500), w+(int)random(0, 500));
    }
    rectMode(CORNER);
  }

  void timer() {
    if (transitionTimer > transitionTimerEnd) 
    {
      transitionTimer = transitionTimerReset;
      prevGame = game;
      goBackToGridGame = !goBackToGridGame;
      if (goBackToGridGame == true) {
        game = 2;
      } else {
        game = (int)random(3, 6);
        if (prevGame == game) {
          game = (int)random(2, gameCount+1);
        }
      }
        println("inside trans");
      }
      transitionTimer++;
      println(transitionTimer);
    }
  }
