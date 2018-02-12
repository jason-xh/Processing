// setup runs once
PShape square;

void setup() {
  size(1000, 1000); // size must be first, (width, height)
  stroke(150, 0, 255); // colour of the line made
  background(0); // colour of window background


  square = createShape(RECT, 0, 0, 50, 50);
  square.setFill(color(0, 0, 255));
  square.setStroke(false);
}



void draw() {
  // line(0, 0, width/2, height/2); // width and height defined in setup in size. line(x1, y1, x2, y2)
  line(5, 495, 5, 200); // triangle line 1
  line(300, 200, 5, 495); // triangle line 2
  line(5, 200, 300, 200); // triangle line 3
  shape(square, 25, 25); // pshape square
  ellipse(400, 400, 50, 80); // ellipse in bottom right
  noFill();
  ellipse(600, 600, 50, 80);
  fill(150, 0, 255);
  ellipse(800, 800, 50, 80);
  // line(100, 100, mouseX, mouseY); // uses mouse to draw lines
}