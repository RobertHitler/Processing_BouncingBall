bounceBall[] balls = new bounceBall[1];

void setup(){
  size(600,600);
  for (int i = 0;i < balls.length; i++){
    balls[i] = new bounceBall(random(50,60),random(30,50));
  }
}

void draw(){
  background(40);
  fill(255);
  rect(20,20,width-40,height-40);
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].move();
    balls[i].edges();
  
      
    }
  }

class bounceBall{
  //float position;
  float x;
  float y;
  float x1;
  float y1;
  float r;
  float r_;
  float xspeed;
  float yspeed;
  float x1speed;
  float y1speed;
  float diaM;
  float diaR;
  
  bounceBall(float temD,float temR){
    x = random(100,300);
    y= random (100,500);
    x1 =random(50,580);
    y1 = random(100,400);
    r = diaM/2;
    r_= diaR/2;
    diaM = temD;
    diaR = temR;
    xspeed = 1;
    yspeed = 3;
    x1speed = 4;
    y1speed = 5;
  }
   void display() {
    noStroke();
    fill(0);
    ellipse(x, y, diaM, diaM);
    ellipse(x1, y1, diaR, diaR);
    
  }
  
  void move(){
    x = x + xspeed;
    y = y + yspeed;
    x1 = x1 + x1speed;
    y1 = y1 + y1speed;
    
  }
  
  void edges(){
    float d = dist(x,y,x1,y1);
    
    if (d < diaM){
    xspeed = xspeed * -1;
    yspeed = yspeed * -1;
    x1speed = x1speed * -1;
    y1speed = y1speed * -1;
  }
  
    if (x > (width - 40) - r || x < 40 ){
      xspeed = xspeed * -1;
    }
      if (y > (height-40) - r || y < 40){
        yspeed = yspeed * -1; 
    }
     if ((x1 > width-40) || (x1 < 40)) {
       x1speed = x1speed * -1;
      }
     if ((y1 > height-40) || (y1 < 40)) {
       y1speed = y1speed * -1;
      }
    }
  }
  
    