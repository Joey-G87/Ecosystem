public class Creature {
  public PVector pos, vel;
  public int speed = 20;
  public float hp = 100.0;
  public final int SIZE = 25;
  public final color COLOR = color(30,30,200);
  public boolean active = true;  
  
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
  public void tick(Creature c) {
   hp --; 
  }
  
  public void collides(Food f) {
    double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2 && f.active) {
      hp += 50;
      f.active = false;
    System.out.println(hp);
      
    }
  }
  
  public void starve(Creature c) {
    if (hp<=0) {
      c.active = false;
      System.out.println(hp);
  }
}
}
