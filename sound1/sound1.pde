import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup() {
  size(1000, 1000);
  minim = new Minim(this);
  
  // loads sound file
  song = minim.loadFile("frankum_nebula.mp3");
  song.play();
}

void draw() {
  background(0);
  stroke(255);
  float colour1;
  float colour2;
  float colour3;
  float amp;
  for (int i = 0; i < song.left.size() -1; i++) {
    amp = abs(song.left.get(i))*100;
    // line(i, width/2 + song.left.get(i)*100, i+1, height/2 + song.left.get(i+1)*100);
    
    //line(i, 300 + song.right.get(i)*100, i+1, 300 + song.right.get(i+1)*100); // right channel
    
    //line(50 + song.left.get(i)*100, i, 50 + song.left.get(i+1)*100, i+1); // vertical line
    colour1 = map(amp, 0, 10, 0, 86);
    colour2 = map(amp, 0, 10, 86, 170);
    colour3 = map(amp, 0, 10, 170, 255);
    println(colour1);
    stroke(colour1, colour2, colour3);
    fill(colour1, colour2, colour3);
    // print(amp+200%255, amp+100%255, amp+50%255);
    ellipse(width/2, height/2, amp*amp*(random(0,3)), amp*amp*(random(0,3)));
  }
}