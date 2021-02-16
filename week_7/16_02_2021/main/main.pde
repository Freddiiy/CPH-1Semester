Human frederik = new Human(60, 50, 20, 50, true);
Human yvonne = new Human(70, 120, 100, 20, false);
Human asger = new Human(270, 60, 200, 50, true);

void setup() {
  size(500, 500);
  frederik.render();
  yvonne.render();
  asger.render();
}
