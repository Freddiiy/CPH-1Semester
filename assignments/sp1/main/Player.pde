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
    println(hp);
    playerController();
    outOfBoundsDetection();
    timer();
  }
  void damage() {
    hp--;
  }

  void playerController() {
    //game 2 is default gridgame controls
    if (game == 2) {
      println("GAME 2");
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

    // game 3 fallgame player controls
    if (game == 3) {
      speed = 5;
      println("GAME 3");
      if (keyPressed) {
        if (keyCode == LEFT || key == 'a') {
          fallGame.playerX -= speed;
          println("LEFT");
        } else if (keyCode == RIGHT  || key == 'd') {
          fallGame.playerX += speed;
          println("RIGHT");
        }
      }
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

  public void timer() {
    this.timer++;
  }
}
