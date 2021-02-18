class FallGame {
  int playerY = 800;
  int playerX = 512;
  int playerSize = 64;
 void render() {
    clearMap();
    drawMap();
    update();
  }

  void clearMap() {
    background(0);
  }
  
  void drawMap() {
    rectMode(CORNER);
    fill(colorSwitch(1));
    rect(playerX, playerY, playerSize, playerSize);
  }
  
  void update() {
    player.update();
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
    case 3:
      c = color(0, 0, 255);
      break;
    case 4:
      c = color(0, 255, 255);
      break;
    }
    return c;
  }
  
  class FallingStar {
    int starX;
    int starY;
    int starSpeed;
  }
}
