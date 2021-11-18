
class Hero extends GameObject  {
   //immunity timer
  float speed;
  Weapon myWeapon;
  
  Hero() {
    super();
    hp=100;
    speed=5;
    roomx=1;
    roomy=1;
 // myWeapon=new Weapon();
 myWeapon=new AutoPistol();
 //myWeapon=new SniperRifle();
 // myWeapon=new ShotGun();
    size=50;
  
  }
  
  void show() {
    fill(lightGrey);
    strokeWeight(4);
   stroke(0);
    circle(location.x,location.y,size); 
    fill(255);
    textSize(20);
     fill(0);
     text(hp, location.x,location.y); // hp counter
      
    
   
   
  
  }
  
  void act() {
    super.act();
    
   
 
     
   
   
   
    
    
    
    //---------------------
  
    //moving the hero
if (wkey) {
    velocity.y=-speed;
}
if (skey) {
  velocity.y=speed;
}
if (akey) {
  velocity.x=-speed;
}
if (dkey){
  velocity.x=speed;
}
if(velocity.mag()>speed) 
velocity.setMag(speed);


if(!wkey&&!skey) velocity.y=velocity.y*0.75;
if(!akey&&!dkey) velocity.x=velocity.x*0.75;

//check exits
//north
if (northRoom!=#FFFFFF && location.y==100&&location.x>=width/2-50 &&location.x<=width/2+50) { 
roomy--; 
location=new PVector(width/2,height-105);
  } 
  if (southRoom!=#FFFFFF && location.y==height-100&&location.x>=width/2-50 &&location.x<=width/2+50) { 
roomy++;
location=new PVector(width/2,100);
  } 
  if (eastRoom!=#FFFFFF && location.x==width-120&&location.y>=height/2-50 &&location.y<=height/2+50) { 
roomx++; 
location=new PVector(125,height/2);
  } 
    if (westRoom!=#FFFFFF && location.x==120&&location.y>=height/2-50 &&location.y<=height/2+50) { 
roomx--;
location=new PVector(width-120,height/2);
  } 
  myWeapon.update();
  if (spacekey) myWeapon.shoot();

  
  }
}
