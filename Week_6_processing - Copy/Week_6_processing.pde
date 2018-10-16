int X_AXIS = 2;
color b1, b2, c1, c2;


void setup()
{
  PImage img;
  img = loadImage("focks.png");
  image(img, 0, 0);
  size(900,600);
  stroke(0);
  strokeWeight(5);
  
  b1 = color(0,0,0,200);
  b2 = color(255,255,255,200);
  c1 = color(204, 102, 0,200);
  c2 = color(0, 102, 153,200);
  
}

void draw()
{
  
  if(key == 'q')
  {
   stroke(255,0,0);
  }
  if(key == 'w')
  {
   stroke(0,255,0);
  }
  if(key == 'e')
  {
   stroke(0,0,255);
  }
  if(key == 'r')
  {
   stroke(0);
  }
  
  if(mouseButton == LEFT)
  {  //when the left mouse button is pressed it draws on the sceen.
     write();   
  }
  
  if(mouseButton == RIGHT)
  {
    stamp();
  }
  
  if(key == 'f')
  {
    fog();
  //setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  //setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  }
  
  if(key == 'c')
  {
    clear();
  }
  
  if(key == 'b')
  {
    border();
  }
  
}

void write()
  {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

void stamp()
  {
    ellipse(mouseX,mouseY,50,50);
  }
  
void fog()
{
  background(255);
  int x = 100;
    PImage img;
    img = loadImage("focks.png");
    tint(255, x);  // Apply transparency without changing color
    image(img, 0, 0);
}

void clear()
{
  PImage img;
  img = loadImage("focks.png");
  image(img, 0, 0);
}

void border()
{
  
  float y1 = 580; 
  float y2 = 540; 
  float y3 = 520; 

  stroke(85,255,105);
  noFill();
  
  for(int i = 0; i<6; i++)
  {
   bezier(10,y1,40,y2,30,y3,20,y3); 
   bezier(10,y1,60,y2,70,y3,80,y3);
   
   bezier(890,y1,860,y2,870,y3,880,y3);
   bezier(890,y1,840,y2,830,y3,820,y3);
   y1 -= 100;
   y2 -= 100;
   y3 -= 100;
  }
  stroke(0);
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis){
  if (axis == X_AXIS) {
 for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    } 
  }
}
  
