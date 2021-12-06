class Particle extends GameObject {
 int t; //transparency
 
 Particle (float x,float y) {
   hp=1;
   size=int(random(5,12));
   t=int(random(200,255));
   location=new PVector(x,y);
    velocity= new PVector(0,1);
 
   
velocity.rotate(PI+random(-5,5)); 
   velocity.setMag(7); 
   
   
 }
 
  void show() {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    square(location.x,location.y,size);
  }
  void act() {
   location.add(velocity);
    t=t-10;
    if(t<=0) hp=0;
    
  }
  
  
  
  
} //end
