Creature[] creature = new Creature[50];
Food[] food = new Food[100];
Lion lion;

public void setup() {
  size(800,800);
  lion = new Lion(400,400);
  spawnCreature();
  spawnFood();
}

public void draw() {
  background(0);
  frameRate(60);
  lion.move();
  lion.show();
  for (int i = 0; i < food.length; i++) {
    if (food[i] != null && food[i].active) {
  food[i].show();
  }
  for (int j = 0; j < creature.length; j++) {
    creature[j].collides(food[i]);
    creature[j].attack(lion);
  }
  }
  
  for (int i = 0; i < creature.length; i++) { 
    if (creature[i] != null && creature[i].active) {
  creature[i].show();
  creature[i].move();
  creature[i].tick(creature[i]);
  creature[i].starve(creature[i]);
    }
  }
}
private void spawnCreature() {
  for (int i = 0; i < creature.length; i++) {
    creature[i] = new Creature((int)(Math.random()*height),(int)(Math.random()*width));
  }
}
private void spawnFood() {
  for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)(Math.random()*height),(int)(Math.random()*width));
  }
}
//
