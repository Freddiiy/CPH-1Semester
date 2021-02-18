import processing.sound.*;

//wraps up everything to be displayed and logic for game switch
int game;
int gameCount = 5;

// game time between games
int gameTime = 0;
int gameTimeEnd = 400;
int gameTimeReset = 0;
TransitionMaker transition = new TransitionMaker();
GridGame gridGame = new GridGame();
FallGame fallGame = new FallGame();
Player player = new Player(16, 16);
Enemy enemy[] = new Enemy[3];
//Enemy enemy = new Enemy(20, 20, player);
Food food = new Food(20, 10, player);

void setup() {
  size(1024, 1024);
  //playMusic();
  enemy[0] = new Enemy(20, 20, player);
  enemy[1] = new Enemy(1, 1, player);
  enemy[2] = new Enemy(10, 20, player);
  game = 0;
}

int timer = 0;
boolean game3 = false;
void draw() {
  if (timer > 1380) {
    gameTimer();
  }
  switch(game) {
  case 0:
    if (timer > 1380) {
      game = 2;
    } else {    
      timer++;
      println(timer);
    }
    break;
  case 1:
    transition.render();
    break;
  case 2:
    // default game
    gridGame.render();
    break;
  case 3:
    fallGame.render();
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

void gameTimer() {
  gameTime++;
  if (gameTime > gameTimeEnd) {
    gameTime = gameTimeReset;
    game = 1;
  }
  println(gameTime);
}
