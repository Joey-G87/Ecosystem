Creature[] creature = new Creature[50];
Food[] food = new Food[100];

public void setup() {
  size(800,800);
  spawnCreature();
  spawnFood();
}

public void draw() {
  background(220);
  for (int i = 0; i < food.length; i++) {
  food[i].show();
  for (int j = 0; j < creature.length; j++) {
  creature.eat(food[j]);
  }
  for (int i = 0; i < creature.length; i++) {
  creature[i].show();
  creature[i].move();
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
