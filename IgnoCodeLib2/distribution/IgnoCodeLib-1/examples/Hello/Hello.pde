// this basic example for IgnoCodeLib 0.3 shows how to initialize the library
// with a call to new IgnoCodeLib(this) in the setup method. 

import net.paulhertz.aifile.*;

IgnoCodeLib hello;

void setup() {
  size(400,400);
  smooth();
  hello = new IgnoCodeLib(this);
  // hello stores a reference to this PApplet that we can 
  // retrieve with getMyParent(). It's used behind the scenes.
  println("Ignotus says "+ hello.getMyParent().frame.getTitle());
  PFont font = createFont("",36);
  textFont(font);
}

void draw() {
  background(0);
  fill(255);
  text(hello.sayHello(), 32, 200);
}
