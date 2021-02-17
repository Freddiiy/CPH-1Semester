int game;
int gameCount = 5;

// game time between games
int gameTime = 0;
int gameTimeEnd = 400;
int gameTimeReset = 0;
TransitionMaker transition = new TransitionMaker();
GridGame gridGame = new GridGame();
Player player = new Player(3, 3);
Enemy enemy = new Enemy(20, 20, player);

void setup() {
  size(1024, 1024);
  game = 1;
}

void draw() {
  gameTimer();
  switch(game) {
  case 0:
    break;
  case 1:
    transition.render();
    break;
  case 2:
    gridGame.render();
    break;
  case 3:
    background(0, 255, 0);
    fill(255, 0, 0);
    rect(100, 100, 200, 200);
    break;
  case 4:
    background(255, 0, 0);
    fill(0, 255, 0);
    rect(100, 100, 200, 200);
    break;
  case 5:
    background(255, 0, 255);
    fill(255, 0, 0);
    rect(100, 100, 200, 200);
    break;
  }
}

//void gameSelect(int selector) {
//  switch(selector) {
//  case 0: 
//    game  = 0;
//    break;
//  case 1: 
//    game = 1;
//    break;
//  case 2:
//    game = 2;
//    break;
//  case 3:
//    game = 3;
//  }
//}

void gameTimer() {
  gameTime++;
  if (gameTime > gameTimeEnd) {
    gameTime = gameTimeReset;
    game = 1;
  }
  println(gameTime);
}
