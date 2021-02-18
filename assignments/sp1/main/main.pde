//Interface ui = new Interface();
GridGame gridGame = new GridGame();
Player player = new Player(16, 16);
Enemy enemy[] = new Enemy[3];
Food food [] = new Food[3];

void setup() {
  size(1024, 1024);

  // spawns multiple enemies in the grid at random positions
  for (int i = 0; i < enemy.length; i++) {
    enemy[i] = new Enemy((int)random(0, gridGame.mapSize), (int)random(0, gridGame.mapSize), player);
  }
  // same for food
  for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)random(0, gridGame.mapSize), (int)random(0, gridGame.mapSize), player);
  }
}

int timer = 0;
void draw() {
  gridGame.render();
}
