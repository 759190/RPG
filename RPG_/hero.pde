
class Hero extends GameObject  {
   //immunity timer
  float speed;
  Weapon myWeapon;
  AnimatedGIF currentAction;
  int whichCat;
  
  Hero() {
    super();
    hp=100;
    speed=5;
    roomx=1;
    roomy=1;
    whichCat=3;
    
    if (whichCat==1) {
    currentAction = orangeStill;
    }
    if (whichCat==2) {
    currentAction = whiteStill;   
    }
    if (whichCat==3) {
    currentAction = blackStill;   
    }
    
 // myWeapon=new Weapon();
 myWeapon=new AutoPistol();
 //myWeapon=new SniperRifle();
 // myWeapon=new ShotGun();
    size=80;
  
  }
  
  void show() {
   // fill(lightGrey);
 

   // circle(location.x,location.y,size); 
   // fill(255);
   textSize(20);
    fill(0);
   text(hp, location.x,location.y-50); // hp counter
     strokeWeight(4);
  currentAction.show(location.x-40,location.y-45,size,size);
  
  }
  
  void act() {
    super.act();
    

   int j=0;
    while(j<myObjects.size()) {
     GameObject obj =myObjects.get(j);
    if(obj instanceof DroppedItem && isCollidingWith(obj)) {

    
   DroppedItem item=(DroppedItem)obj;
   if(item.type==GUN) {
     myWeapon=item.w;
     item.hp=0;
   }
    }
    j++;
    } 
     
   
   
   
    
    
 myWeapon.update();
  if (spacekey) myWeapon.shoot();    
    //---------------------
  
    //moving the hero
if (wkey) {
    velocity.y=-speed;
     if (whichCat==1) {
   currentAction = orangeUp;
    }
    if (whichCat==2) {
    currentAction = whiteUp;  
    }
    if (whichCat==3) {
     currentAction = blackUp; 
    }
}
if (skey) {
  velocity.y=speed;
   if (whichCat==1) {
   currentAction = orangeDown;
    }
    if (whichCat==2) {
    currentAction = whiteDown;  
    }
    if (whichCat==3) {
     currentAction = blackDown; 
    }
}

if (akey) {
  velocity.x=-speed;
  
   if (whichCat==1) {
   currentAction = orangeLeft;
    }
    if (whichCat==2) {
    currentAction = whiteLeft;  
    }
    if (whichCat==3) {
     currentAction = blackLeft; 
    }
}
if (dkey){
  velocity.x=speed;

   if (whichCat==1) {
   currentAction = orangeRight;
    }
    if (whichCat==2) {
    currentAction = whiteRight;  
    }
    if (whichCat==3) {
     currentAction = blackRight; 
    }
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
 

 
  }
}
