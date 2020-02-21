Enemy enemies;

void setup() {
  size(600,600);
  enemies = new Enemy();
}

void draw() {
  enemies.move();
}

class Enemy {
  float x;
  float y;
  float speed;
  float n;
  float angle;
  float k;
  float l;
  

Enemy() {
    x = random(width);
    x = constrain(x,150,500);
    y = 0 - 20;
    speed = height/200;
    n = 0;
    angle = PI/600;
  }
  
  void display() {
    shapeMode(CENTER);
    rectMode(CENTER);
    ellipseMode(CENTER);
    background(255);
    stroke(0);
    fill(0);
    rect(x-9,y-6,5,1);
    rect(x+9,y-6,5,1);
    rect(x-6.5,y-6,1,9);
    rect(x+6,y-6,1,9);
    for (int i = 0; i < 7; i++) {
    fill(0);
    ellipse(x-7-i*.6,y-6+i*.5,1,1);
    ellipse(x-9-i*.3,y-3-i,1,1);
    ellipse(x+7+i*.6,y-6+i*.5,1,1);
    ellipse(x+9+i*.3,y-3-i,1,1);
    ellipse(x-i*.5,y-7+i,1,1);
    ellipse(x+i*.5,y-7+i,1,1);
    ellipse(x-i*.5,y-7+i,1,1);
    ellipse(x+i*.5,y-7+i,1,1);
    ellipse(x-i*.5,y-7+i,1,1);
    ellipse(x+i*.5,y-7+i,1,1);
    ellipse(x-3-i*.5,y-2-i,1,1);
    ellipse(x+3+i*.5,y-2-i,1,1);
    ellipse(x-4-i*.3,y+i*.5,1,1);
    ellipse(x-7+i*.3,y+3+i*.5,1,1);
    ellipse(x+4+i*.3,y+i*.5,1,1);
    ellipse(x+7-i*.3,y+3+i*.5,1,1);
    }
    fill(125);
    ellipse(x-13.4,y-9,3,3);
    ellipse(x+13.4,y-9,3,3);
    rect(x-2,y-13,3,1);
    rect(x+2,y-13,3,1);
    triangle(x-1.5,y,x,y+4,x+1.5,y);
    triangle(x-3,y,x,y-16,x+3,y);
}

    
  void move() {
    //float j = random(-10,-5); //<>//
    //float u = random(5,10);
    if (y >= 340 && x < width/2) {
      n = 1;
    } else if ( y >=340 && x > width/2) { 
      n = 2;
    } else {
      if (speed > 0) {
      y += speed;
      display();
  } //else if (speed < 0 && x > width/2){
    //y += random(-10,-5);
    //x += u;
    //display();
  //} //else {
    //y += random(-10,-5);
    //x += j;
    //display();
  //}
  if (y < -20) {
}
}
if (n == 1) {
  if (x > 100 && y > 100) {
     k = x;
     l = y;
    translate(k-50,l-70);
    x = 70;
    y = 70;
    speed = 0;
  } else {
  translate(k-50,l-70);
  rotate(angle);
  display();
  angle += PI/50;
  }} if ( n == 2) {
   if (x > 100 && y > 100) {
     k = x;
     l = y;
    translate(k,l-70);
    x = 70;
    y = 70;
    speed = 0;
  } else {
  translate(k,l-70);
  rotate(angle);
  display();
  angle -= PI/50;
}
}
if (angle < -6) {
  n = 0;
  translate(k,l-70);
   y += -7;
  x += 10;
  display();
} else if (angle > 6) {
  n = 0;
  translate(k-50,l-70);
  y += -7;
    x += -10;
    display();
}
}
}
