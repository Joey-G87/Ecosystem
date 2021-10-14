public class Lion {
  public PVector pos, vel;
  public int speed = 20;
  public final int SIZE = 30;
  public final color COLOR = color(255,255,0);

public Lion(int x, int y) {
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
}
