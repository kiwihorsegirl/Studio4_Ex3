CircleButton c;
RectangleButton r;

// holds the lines
String[] lineArray;
// This array will be used to split up the words on a line.
ArrayList<String> wordList;

ArrayList<Button> _buttonList;

String[] dataLines;

void setup() {
  size(800, 800);
  _buttonList = new ArrayList<Button>();

    //c = new CircleButton(x, y, buttonColor, size);
    //r = new RectangleButton(x, y, caption, buttonColor, bWidth, bHeight);
    
    c = new CircleButton(150, 150, #713CAF, 50);
    r = new RectangleButton(250, 250, "Hello", #6FAF3C, 200, 200);
  
  
  dataLines = loadStrings("buttons.csv");
  
  for (String line : dataLines) {
    String[] values = split(line, ',');
    int x = int(values[0]);
    int y = int(values[1]);
    

    // Rectangle button
    if (values.length == 8) { 
      String caption = values[2];
      color buttonColor = color(parseInt(values[3]), parseInt(values[4]), parseInt(values[5]));
      int bWidth = parseInt(values[6]);
      int bHeight = parseInt(values[7]);
      r = new RectangleButton(x, y, caption, buttonColor, bWidth, bHeight);
      _buttonList.add(r);
      
      // Circle button
    } else if (values.length == 6) { 
     color buttonColor = color(parseInt(values[2]), parseInt(values[3]), parseInt(values[4]));
      int size = parseInt(values[5]);
      c = new CircleButton(x, y, buttonColor, size);
      _buttonList.add(c);
    }
  }
}


void draw() {
  
  for (Button b : _buttonList) {
      b.drawButton();
  }

}

void mousePressed() {
  for (Button b : _buttonList) {
    if (b.isClicked(mouseX, mouseY)) {
      System.out.println("Clicked on " + b.getClass().getSimpleName());
    }
  }
}
