class Enemy {
  int x;
  int y;
  int cSwitch  = 2;
  Player player;
  
  Enemy(int x, int y, Player player) {
    this.x = x;
    this.y = y;
    this.player = player;
  }
  
  void render() {
    moveToPlayer();
  }
  
  void moveToPlayer() {
    int xDistance = Math.abs(player.x-this.x);
    int yDistance = Math.abs(player.y-this.y);
    
    if (xDistance > player.x) {
      
    }
  }
}
