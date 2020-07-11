float x = 0;
float y = 0;
float speed = 1;
boolean wPressed = false;
boolean dPressed = false;
boolean sPressed = false;
boolean aPressed = false;

void setup() {
 size(600,600);
}

void aim(){}
void keyPressed() {
  if (key == 'a') {
    aPressed = true;
  } else if (key == 'd') {
    dPressed = true;
  } else if (key == 'w') {
    wPressed = true;
  } else if (key == 's') {
    sPressed = true;
  }
}
 
void  keyReleased () {
  if (key == 'a') {
    aPressed = false;
  } else if (key == 'd') {
    dPressed = false;
  } else if (key == 'w') {
    wPressed = false;
  } else if (key == 's') {
    sPressed = false;
  }
}

void move() {
    if (aPressed){
      x = x - 3;
    }
 
    if (dPressed){
      x = x + 3;
    }
 
    if (wPressed){
      y = y - 3;
    }
 
    if (sPressed){
      y = y + 3;
    }
  }
  
void draw() {
   background(0);
   fill(255);
   move();
   translate( x,y);
   //rotate(atan2(mouseX,mouseY));
   triangle(30, 75, 58, 20, 86, 75);
   if (x > width)   x = -100;
   if(y > height) y = -100;
} 
