class Player {
  int x;
  int y;
  int cSwitch = 2;
  int hp;
  
  Player(int x, int y) {
    this.x = x;
    this.y = y;
    hp = 3;
  }
  
  void damage() {
    hp--;
  }
}
