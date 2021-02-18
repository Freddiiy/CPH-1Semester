// controls the enemy for grid game
class Food {
  int x;
  int y;
  int cSwitch  = 3;
  Player player;

  //slows down the enemy
  int timer = 0;
  int timerAccept = 15;
  int timerReset = 0;

  Food(int x, int y, Player player) {
    this.x = x;
    this.y = y;
    this.player = player;
  }

  void update() {
    moveFood();
    timer();
    outOfBoundsDetection();
    playerDetection();
  }

  void moveFood() {
    boolean acceptInput = timer > timerAccept;
    int md = (int)random(0, 3);

    // up
    if (md == 0 && acceptInput) {
      this.y -= 1;
      timer = timerReset;
    }
    //down
    if (md == 1 && acceptInput) {
      this.y += 1;
      timer = timerReset;
    }
    //left
    if (md == 2 && acceptInput) {
      this.x -= 1;
      timer = timerReset;
    }
    //right
    if (md == 3 && acceptInput) {
      this.x += 1;
      timer = timerReset;
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
  void playerDetection() {
    if (this.x == player.x && this.y == player.y) {
      player.hp += 1;
      this.x = (int)random(0, gridGame.mapSize);
      this.y = (int)random(0, gridGame.mapSize);
    }
  }

  public void timer() {
    this.timer++;
  }
}
