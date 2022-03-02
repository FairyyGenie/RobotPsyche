//The ecosystme project: the fireflies escaping from the light
//Genie Hou
//2022/02/28

//create the mover list
Mover[] movers = new Mover[50];

//set up function
void setup() {
  size(800,500);
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {

  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
  
  buttonclick();
}

//button to switch between night and day
void buttonclick()
{
  //button
   fill(50);
   rect(40,60,100,40);
   fill(255);
   rect(40,120,100,40);
   if (mouseX>=40&&mouseX<=140&&mouseY>=60&&mouseY<=100&&mousePressed)
   {
     background(50);
     for (int i = 0; i < movers.length; i++) {
      movers[i].update();
      movers[i].checkEdges();
      movers[i].nolight();
  }
   }
   else if (mouseX>=40&&mouseX<=140&&mouseY>=100&&mouseY<=140&&mousePressed)
   {
     background(255);
     for (int i = 0; i < movers.length; i++) {
      movers[i].update();
      movers[i].checkEdges();
      movers[i].display();
  }
     
   }
   
}
 
class Mover {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
 
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    //let the fireflies fly away a little slower
    topspeed = 2;
  }
 
  void update() {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);

    dir.normalize();
    dir.mult(0.5);
    acceleration = dir;
    velocity.add(acceleration);
    velocity.limit(topspeed);
    
    //the flies fly away from the light
    location.sub(velocity);
    
    checkLoc();
  }
  
  //if the it is in the morning fireflies has no light
  void nolight(){
    stroke(0);
    fill(100);
    ellipse(location.x,location.y,16,16);
  }

 //add color to create the firefles flicker appearence 
  void display() {
    stroke(0);
    fill(random(200,255),204,random(10));
    ellipse(location.x,location.y,16,16);
   
  }
 
 //if the fireflies fly out from the frame we pull them back a little
 void checkLoc(){
   if (location.x>800 || location.y>500 )
    {
        location.sub(random(100),random(100));
    }
    
    if (location.x<0 || location.y<0)
    {
      location.add(random(100),random(100));
    }
 
 }
//check the edge so the fireflies stay in frame
  void checkEdges() {
    if (location.x > width) {
      location.x = 400;
    } else if (location.x < 0) {
      location.x = 100;
    }
 
    if (location.y > height) {
      location.y = 200;
    }  else if (location.y < 0) {
      location.y = 50;
    }
  }
}
