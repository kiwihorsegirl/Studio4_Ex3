public class CircleButton extends Button {

  private int _size;

  public CircleButton(int x, int y, color buttonColor, int size) {
    
    // FIXME
    super(x, y, buttonColor);
    _size = size;
    
  }
  
  public void drawButton() {
    
    fill(_buttonColor);
    ellipse(_x, _y, _size, _size);
    
  }
 
    
  public boolean isClicked(int x, int y) {
    float d = dist(x, y, _x, _y); // Calculate distance between mouse and button center
    return (d <= _size / 2); // Check if distance is less than or equal to radius
  }
  

}
