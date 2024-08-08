abstract class Button {
 
  protected PVector _centre;
  protected color _buttonColor;
  // i added these VV
  protected int _x;
  protected int _y;
  // ^^
  
  public Button(int x, int y, color buttonColor) {
    _buttonColor = buttonColor;
    //
    _x = x;
    _y = y;
    //
  }
  
  public abstract void drawButton();
  
  public abstract boolean isClicked(int x, int y);
  
}
