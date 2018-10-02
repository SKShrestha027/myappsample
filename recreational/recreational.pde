int x1 = 0;
int x2 = 0;
int y1 = 600;
int y2 = 600;

void setup(){
 size(600,600);
 background(255);
 fill(0);
}

void draw(){
drawLines();
theVoid();
//drawing();
}

void drawLines(){
  stroke(random(255),random(255),random(255));
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
  line(300,300,random(300),random(300));
  //stroke(random(255),random(255),random(255));
  
  //line(0,0,random(300),random(300));
}
popMatrix();
}

//Samyam Krish Shrestha

int x = 0; //I set the x and y variables here as they wouldn't work correctly if they were inside the draw function.
int y = 0; //They are used to draw the squares and keep trach of what colour the squares are supposed to be.



void drawing(){
  float r = random(255);  //This random picks any number between 1 and 255. This is used to select what shade of red/green/blue the square will be.
  if(y<175){  //This sort of if statement is done for each colour to make sure the right colour is in each third on the canvas.
  fill(0,0,r);  //This fills each square with a shade of blue. The shade is dictated by the random number. This is cloned for the red and green colours as well.
  }
  if(y<375 && y > 175){
  fill(r,0,0);
  }
  if(y<600 && y > 375){
  fill(0,r,0);
  }
/*  rect(x,y,50,50);  //Here we begin drawing the squares with the colour selected in the section above.
  x = x + 50;  //This changes the x position of each square.
  if(x >600){  //This section makes it so when the square's x position is 600 (no longer showing on the canvas) it sets it to 0 and increases the y co-ordinate.
    y = y + 50; //This allows it to draw a new line of squares on a new row.
    x = 0;
  }*/
  //if(y>=600){ //This if statement is to make sure the squares don't draw over this next section.
   /* 
    int q = 300;  //I just put a few variabes here to make it easier to edit code.
    int w = 100;
    int e = 150;
    int t = 450;
    int y = 500;
    int a = 400;
    int c = 200;
  
 fill(#FC5908);  //This makes the fill into a orange colour.
  bezier(q,w,e,q,t,q,q,y);  //These 2 lines handle the vertical petals.
  bezier(q,w,t,q,e,q,q,y);
  
  translate(width/2,height/2);
  rotate(radians(1));
  */  
  /*bezier(w,q,q,t,q,e,y,q);  //These lines create the horizontal petals.
  bezier(y,q,q,t,q,e,w,q);
  
  bezier(t,t,c,a,a,c,e,e);  //These next 4 lines are responsible for the diagonal petals.
  bezier(t,t,a,c,c,a,e,e);
  
  bezier(e,t,a,a,c,c,t,e);  
  bezier(t,e,a,a,c,c,e,t);
  
  
  stroke(0,0,0);  //This is just used to verify that the stroke oclour is black.
  line(q,w,q,y);  //These 4 lines create the lines that go vertically, horizontally and diagonally through the flower.
  line(w,q,y,q);
  line(e,e,t,t);
  line(t,e,e,t);
  
  fill(0,0,0);  //This makes the fill colour black for the centre of the flower.
  ellipse(q,q,w,w);  //This draws a circle in the middle to finish the flower.
  }
  println(mouseX,mouseY);  //This shows the x,y position of the mouse, which was useful when drawing the different parts of the flower.*/
}
