// setup runs once
void setup() {
  size(500, 500); // size must be first, (width, height)
  stroke(150, 0 ,255); // colour of the line made
  background(0); // colour of window background
}



void draw() {
  // line(0, 0, width/2, height/2); // width and height defined in setup in size. line(x1, y1, x2, y2)
  line(5, 495, 5, 200);
  line(300, 200, 5, 495);
  line(5, 200, 300, 200);
}