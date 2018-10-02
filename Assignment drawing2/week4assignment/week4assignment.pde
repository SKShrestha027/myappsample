int red = 0;
int blue = 0;
int green = 0;

PImage bg;

void setup() {
  size(640, 360);
  bg = loadImage("moonwalk.jpg");
  background(bg);
}

void draw() {

  if (mousePressed) {
    stroke(red, green, blue);
    strokeWeight(10);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }


  int x1 = 100;
  int x2 = 300;
  int x3 = 500;
  int y = 280;
  int s = 50;
  noStroke();

  fill(255, 0, 0);
  rect(x1, y, s, s);
  if (mousePressed && mouseX>x1 && mouseX<x1+s && mouseY>y && mouseY<y+s) {
    tint(255, 0, 0);
    image(bg, 0, 0);
  }
  fill(0, 255, 0);
  rect(x2, y, s, s);

  if (mousePressed && mouseX>x2 && mouseX<x2+s && mouseY>y && mouseY<y+s) {
    tint(0, 255, 0);
    image(bg, 0, 0);
  }
  fill(0, 0, 255);
  rect(x3, y, s, s);

  if (mousePressed && mouseX>x3 && mouseX<x3+s && mouseY>y && mouseY<y+s) {
    tint(0, 0, 255);
    image(bg, 0, 0);
  }
}

void keyPressed() {
  if (key ==' ') {
    background(bg);
  }

  if (key =='r') {
    red=255;
    green =0;
    blue=0;
  }
  if (key =='b') {
    blue=255;
    red =0;
    green=0;
  }
  if (key =='g') {
    green=255;
    red =0;
    blue=0;
  }
}

void mouseClicked() {
  stroke(red, green, blue);
  strokeWeight(10);
  noFill();
  ellipse(mouseX, mouseY, 100, 100); 
  line(mouseX-15, mouseY-15, mouseX-15, mouseY-15);
  line(mouseX+15, mouseY-15, mouseX+15, mouseY-15);
  arc(mouseX, mouseY, 50, 50, 0, PI);
}