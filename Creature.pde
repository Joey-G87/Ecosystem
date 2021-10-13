public class Creature {
  public PVector pos, vel;
  public int speed = 10;
  public float hp = 100.0;
  public final int SIZE = 25;
  public final color COLOR = color(30,30,200);
  public int foodscore = 0;
  public int totalfood = 50;
  
  public Creature(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
  
    vel = PVector.random2D().mult(speed);
    
    pos.add(vel);
  }
public boolean canMove() {
  boolean canMove;
  PVector newPos = PVector.add(pos, vel); 
  if (newPos.y < width || newPos.y > height + SIZE || newPos.x < width) {
   canMove = false; 
  }
  else {
   canMove = true;    
  }
  return canMove;
  }
  
  public void collides(Food f) {
    double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
      foodscore += 1;
      hp += 50;
      totalfood -=1;
      f.active = false;
      System.out.println(hp);
      
    }
  }
  public void newFood() {
   if (totalfood ==0) {
     totalfood += 10;
   }
  }
  
  public void starve() {
    if (totalfood ==0 && foodscore <= 2) {
      hp -=100; 
      System.out.println(hp);
  }
}
}
