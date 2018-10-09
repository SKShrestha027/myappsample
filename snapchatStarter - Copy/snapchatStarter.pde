/**
Creative Interactions - Assignment 2
Snapchat starter sketch
To be edited for submission
*/

PImage bg;
    float x = 0;
    float y = 0;
    int x1 = 0;
    int x2 = 0;
    int y1 = 960;
    int y2 = 720;
    
void setup() {
  size(960, 720);
  bg = loadImage("sample.jpg");
    background(bg);
}

void draw() {
  if(mousePressed == true){
 if (mouseButton == RIGHT) { 
 }
 stroke(random(255),random(255),random(255));
  line(mouseX,mouseY,pmouseX,pmouseY);
  }
  //if(keyPressed == true){
  //}
//shapes();
//drawLines();
//theVoid();

}

void drawLines(){
  stroke(0);
  line(x1,y1,x2,y2);
  //line(y2,y1,x1,x2);
  //line(y1,y2,x2,x1);
  line(y1,y2,y2,y1);
  line(x2,x1,x2,y2);
 
  x2+=10;
  y1-=10;
}

void theVoid(){
  pushMatrix();
  translate(width/2,height/2);
  fill(200,200,200);
for(int i = 0;i <= 360; i++){
  rotate(radians(1));
  line(480,360,random(300),random(300));
  //stroke(random(255),random(255),random(255));
  
  //line(0,0,random(300),random(300));
}
popMatrix();
}


void mouseClicked(){
  ellipse(mouseX,mouseY,50,50);
}

void keyPressed(){
   if(key == 'b'){
    keyb();
  }
    if(key == ' '){
    clear();
  }
  if(key == 'r'){  //draws a square where the mouse is, size depends on where the mouse is as well.
    fill(random(255),random(255),random(255));
   rect(pmouseX,pmouseY,mouseX,mouseY); 
  }
}

void keyb(){    //different types of filters
    //filter(INVERT);
    //filter(THRESHOLD);
    //filter(GRAY);
    filter(POSTERIZE,2);
    //filter(BLUR,37);
    //filter(DILATE);
    //filter(ERODE);
}

void mouseWheel(MouseEvent event) {
  noStroke();
colorMode(HSB, 255);
color c = color(0, 126, 205);
fill(c);
rect(15, 20, 35, 60);
float value = brightness(c);  // Sets 'value' to 255
fill(value);
rect(50, 20, 35, 60);
rect(pmouseX,pmouseY,mouseX,mouseY);
}

void shapes(){
   stroke(0);
  fill(255);
  rect(x,y,x,y);
  ellipse(x,y,x,y);
x+=1.5;
y+=1.5; 
}
void clear(){
 background(bg); 
}
