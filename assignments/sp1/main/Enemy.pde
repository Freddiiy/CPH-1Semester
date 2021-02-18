// controls the enemy for grid game
class Enemy {
  int x;
  int y;
  int cSwitch  = 2;
  Player player;

  //slows down the enemy
  int timer = 0;
  int timerAccept = 15;
  int timerReset = 0;

  Enemy(int x, int y, Player player) {
    this.x = x;
    this.y = y;
    this.player = player;
  }

  void update() {
    moveToPlayer();
    timer();
    outOfBoundsDetection();
    playerDetection();
    randomMove(0, 20);
  }

  void moveToPlayer() {
    boolean playerIsLeft = player.x < this.x;
    boolean playerIsRight = player.x > this.x;
    boolean PlayerIsUp = player.y < this.y;
    boolean playerIsDown = player.y > this.y;

    boolean acceptInput = timer > timerAccept;
    if (game == 2) {
      if (playerIsLeft && acceptInput) {
        this.x -= 1;
        timer = timerReset;
      }
      if (playerIsRight && acceptInput) {
        this.x += 1;
        timer = timerReset;
      }
      if (PlayerIsUp && acceptInput) {
        this.y -= 1;
        timer = timerReset;
      }
      if (playerIsDown && acceptInput) {
        this.y += 1;
        timer = timerReset;
      }
    }
  }

  void randomMove(int x, int y) {
    boolean acceptInput = timer > timerAccept;
    int rnd = (int) random(x, y);

    if (rnd == 1 && acceptInput && this.x > gridGame.mapSize) {
      this.x -= 1;
      timer = timerReset;
    }
    if (rnd == 2 && acceptInput && this.x < gridGame.mapSize) {
      this.x += 1;
      timer = timerReset;
    }
    if (rnd == 3 && acceptInput && this.y > gridGame.mapSize) {
      this.y -= 1;
      timer = timerReset;
    }
    if (rnd == 4 && acceptInput && this.x < gridGame.mapSize) {
      this.y += 1;
      timer = timerReset;
    }
  }

  void outOfBoundsDetection() {
    if (game == 2) {
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
  }

  void playerDetection() {
    if (this.x == player.x && this.y == player.y) {
      player.hp -= 1;
      this.x = (int)random(0, gridGame.mapSize);
      this.y = (int)random(0, gridGame.mapSize);
    }

    ////detects if enemy is on top of eachother
    //for (int i = 0; i < enemy.length-1; i++) {
    //  if(enemy[i+1].x == enemy[i].x && enemy[i+1].y == enemy[i].y) {
    //    enemy[i+1].x += 1;
    //    enemy[i+1].y += 1;
    //  }
    //}
  }
  public void timer() {
    this.timer++;
  }
}
