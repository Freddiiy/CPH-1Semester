// game 2, default game
class GridGame {
  int mapSize = 32;
  int gridSize = mapSize;

  int[][] grid = new int[mapSize][mapSize];
  void render() {
    gridSize = 1024/mapSize;
    clearMap();
    update();
    drawMap();
    gameOver();
    ui();
  }

  void clearMap() {
    for (int x = 0; x < grid.length; x++) {
      for (int y = 0; y < grid[0].length; y++) {
        grid[x][y] = 0;
      }
    }
  }

  void drawMap() {
    rectMode(CORNER);
    for (int x = 0; x < grid.length; x++) {
      for (int y = 0; y < grid[0].length; y++) {
        fill(colorSwitch(grid[x][y]));
        stroke(126);
        rect(x * gridSize, y * gridSize, gridSize, gridSize);
      }
    }
  }

  void update() {
    grid[player.x][player.y] = player.cSwitch;
    player.update();
    //grid[enemy.x] [enemy.y] = enemy.cSwitch;
    //enemy.update();
    //grid[food.x] [food.y] = food.cSwitch;
    //food.update();

    // Controls the enemies seperately
    for (int i = 0; i < enemy.length; i++) {
      grid[enemy[i].x] [enemy[i].y] = enemy[i].cSwitch;
      enemy[i].update();
    }

    // ^same for food
    for (int i = 0; i < food.length; i++) {
      grid[food[i].x] [food[i].y] = food[i].cSwitch;
      food[i].update();
    }
  }

  color colorSwitch(int cSwitch) {
    color c = color(255);

    switch(cSwitch) {
    case 0:
      c = color(0);
      break;
      //player color
    case 1:
      c = color(0, 255, 0);
      break;
      //enemy color
    case 2:
      c = color(255, 0, 0);
      break;
      //food color
    case 3:
      c = color(139, 0, 139);
      break;
    case 4:
      c = color(0, 255, 255);
      break;
    }
    return c;
  }

  void ui() {
    textSize(32);
    textAlign(CORNER);
    fill(255);
    text("Health: " + player.hp, width-width+10, height-10);
  }
  void gameOver() {
    boolean playerIsDead = player.hp <= 0;
    if (playerIsDead) {
      background(0);
      textSize(128);
      textAlign(CENTER);
      fill(255);
      text("GAME OVER", width/2, height/2);
      textSize(64);
      text("Press R to Restart", width/2, height/2+70);
    }
    if (keyPressed) {
      if (key == 'r' && playerIsDead) {
        // spawns multiple enemies in the grid at random positions
        for (int i = 0; i < enemy.length; i++) {
          enemy[i].x = ((int)random(0, gridGame.mapSize));
          enemy[i].y = ((int)random(0, gridGame.mapSize));
        }
        // same for food
        for (int i = 0; i < food.length; i++) {
          food[i].x = ((int)random(0, gridGame.mapSize));
          food[i].y = ((int)random(0, gridGame.mapSize));
        }
        player.x = 16;
        player.y = 16;
        player.hp = 3;
      }
    }
  }
}
