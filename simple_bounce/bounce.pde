float x = 400;
float y = 300;
float xspeed = 5;
float yspeed = 3;
float x1speed = 2;
float y1speed = 4;
float x1 = 300;
float y1 = 250;
//float rad = 8;



void setup() {
  size(500,500);
  background(255);
  rect(20,20,width-40,height-40);
}

void draw() {
  fill(255);
  
  
 float d = dist(x,y,x1,y1);
  
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;
  x1 = x1 + x1speed;
  y1 = y1 + y1speed;


  if (d < 30){
    xspeed = xspeed - x1speed ;
    yspeed = yspeed - y1speed ;
  }
  // Check for bouncing
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  if ((x1 > width) || (x1 < 0)) {
    x1speed = x1speed * -1;
  }
  if ((y1 > height) || (y1 < 0)) {
    y1speed = y1speed * -1;
  }

  
  // Display at x,y location
  stroke(0);
  fill(175);
  strokeWeight(20);
  point(x,y);
  fill(30);
  strokeWeight(20);
  point(x1,y1);
  
 // ellipse(x,y,rad*2,rad*2);
  //ellipse(x1,y1,rad*2,rad*2);
}