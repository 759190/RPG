class Bullet extends GameObject {
 
  int timer;
  int lives;
 color Bcolour; //bullet color 
int size;
  
 
 
  Bullet() {
    timer=60;
    hp=1;
    location=new PVector(myHero.location.x,myHero.location.y); //   location=myHero.location.copy();
    velocity.setMag(5);
    size=10;
    //velocity=new PVector(myHero.direction.x,myHero.direction.y);
    // velocity.add(myHero.velocity); //bullet speed (adding) 
  } 
    
  Bullet(int s,color bc, PVector av) { //size, bullet colour
   timer=100;
    lives=1;
    location=new PVector(myHero.location.x,myHero.location.y); //   location=myHero.location.copy();
    velocity.setMag(50);
 
  size=s;
  Bcolour=bc;
  velocity = av;
 }
  
  
 void show() {
   noStroke();
   fill(Bcolour);
   ellipse(location.x,location.y,size,size);
 }
 void act() {
   //super.act();
    location.add(velocity);
   
   //bullet reload time
   timer=timer-1;
   if(timer<=0) {
     hp=0;  
   }
    if(location.y>height-95)          hp=0;
    if(location.y<0+95)               hp=0;
    if(location.x>width-115)          hp=0;
    if(location.x<0+115)              hp=0;

 }
  
  
}//end
