import processing.sound.*;

//wraps up everything to be displayed and logic for game switch
int game;
int gameCount = 5;

// game time between games
int gameTime = 0;
int gameTimeEnd = 400;
int gameTimeReset = 0;

Interface ui = new Interface();
TransitionMaker transition = new TransitionMaker();
GridGame gridGame = new GridGame();
FallGame fallGame = new FallGame();
Player player = new Player(16, 16);
Enemy enemy[] = new Enemy[5];
Food food [] = new Food[3];

void setup() {
  size(1024, 1024);
  //playMusic();

  // spawns multiple enemies in the grid at random positions
  for (int i = 0; i < enemy.length; i++) {
    enemy[i] = new Enemy((int)random(0, gridGame.mapSize), (int)random(0, gridGame.mapSize), player);
  }
  // same for food
  for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)random(0, gridGame.mapSize), (int)random(0, gridGame.mapSize), player);
  }
  
  game = 2;
}

int timer = 0;
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
  //ui.update();
}

void gameTimer() {
  gameTime++;
  if (gameTime > gameTimeEnd) {
    gameTime = gameTimeReset;
    game = 1;
  }
  println(gameTime);
}
