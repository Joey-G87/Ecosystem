public class Food {
  public PVector pos;
  public int SIZE = 10;
  public final color COLOR = color(0,200,30);
  public int health = (int)random(1,5);
  public boolean active = true;                                                                                            
  
  public Food(int x, int y) {
    pos = new PVector (x,y);
    SIZE = 10;
  }
   public void show() {
   circle(pos.x,pos.y,SIZE);
   fill(COLOR);
  }
}
