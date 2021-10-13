public class Food {
  public PVector pos;
  public int SIZE = 15;
  public final color COLOR = color(0,200,30);
  public boolean active = true;                                                                                            
  
  public Food(int x, int y) {
    pos = new PVector (x,y);
    SIZE = 15;
  }
   public void show() {
     for (int i = 0; i < food.length; i++) {
     if (food[i].active)
   circle(pos.x,pos.y,SIZE);
   fill(COLOR);
     }
  }
}
