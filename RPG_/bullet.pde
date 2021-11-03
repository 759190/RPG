class Bullet extends GameObject {
 
  int timer;
  int lives;
 color Bcolour; //bullet color 
int size;
  
 
 
  Bullet() {
    timer=60;
    lives=1;
    location=new PVector(myHero.location.x,myHero.location.y);
    //velocity=new PVector(myHero.direction.x,myHero.direction.y);
    velocity.setMag(10); // set magnatude
    velocity.add(myHero.velocity); //bullet speed (adding)
    size=10;
    
    
  } 
    
  Bullet(int s,color bc, PVector av) { //size, bullet colour
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
   super.act();
   
   //bullet reload time
   timer=timer-1;
   if(timer<=0) {
     lives=0;  
   }

 }
  
  
}//end
