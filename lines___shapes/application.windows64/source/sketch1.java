import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch1 extends PApplet {

// setup runs once
public void setup() {
   // size must be first, (width, height)
  stroke(150, 0 ,255); // colour of the line made
  background(0); // colour of window background
}



public void draw() {
  // line(0, 0, width/2, height/2); // width and height defined in setup in size. line(x1, y1, x2, y2)
  line(5, 495, 5, 200);
  line(300, 200, 5, 495);
  line(5, 200, 300, 200);
}
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "sketch1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
