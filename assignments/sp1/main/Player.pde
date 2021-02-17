class Player{
  int x;
  int y;
  int cSwitch = 1;
  int hp;

  // slowing down the player so they dont fly around
  int timer = 0;
  int timerAccept = 5;
  int timerReset = 0;

  Player(int x, int y) {
    this.x = x;
    this.y = y;
    hp = 3;
  }
  void update() {
    playerController();
    outOfBoundsDetection();
    timer();
  }
  void damage() {
    hp--;
  }

  void playerController() {
    if(game == 2) {
      boolean acceptInput = timer > timerAccept;
      if (keyPressed) {
        if (keyCode == UP && acceptInput || key == 'w' && acceptInput) {
          this.y -= 1;
          timer = timerReset;
        } else if (keyCode == DOWN && acceptInput || key == 's' && acceptInput) {
          this.y += 1;
          timer = timerReset;
        } else if (keyCode == LEFT && acceptInput || key == 'a' && acceptInput) {
          this.x -= 1;
          timer = timerReset;
        } else if (keyCode == RIGHT && acceptInput || key == 'd' && acceptInput) {
          this.x += 1;
          timer = timerReset;
        }
      }
    }
  }

  //void keyPressed() {
  //  if (key == UP /*|| input == 'w' || input == 'W'*/) {
  //    this.x -= 1;
  //  }
  //  else if (key == DOWN /*|| input == 's' || input == 'S'*/) {
  //    this.x += 1;
  //  }
  //  else if (key == LEFT /*|| input == 'a' || input == 'A'*/) {
  //    this.y -= 1;
  //  }
  //  else if (key == RIGHT /*|| input == 'd' || input == 'D'*/) {
  //    this.y += 1;
  //  }
  //}

  void outOfBoundsDetection() {
    if (this.x <= 0) {
      this.x = 0;
    }
    if (this.x >= gridGame.mapSize-1) {
      this.x = gridGame.mapSize-1;
    }
    if (this.y <= 0) {
      this.y = 0;
    }
    if (this.y >= gridGame.mapSize-1) {
      this.y = gridGame.mapSize-1;
    }
  }
  public void timer() {
    this.timer++;
    //if (timer <= 0) {
    //  timer = 0;
    //}
  }
}
