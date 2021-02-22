// Controls for the player across games
class Player {
  int x;
  int y;
  int cSwitch = 1;
  int hp;
  int score = 0;
  int speed = 5;

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
    //game 2 is default gridgame controls
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
  }
}
