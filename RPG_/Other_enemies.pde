class FolShooter extends Enemy { //follower shooter
 int FStimer;
  FolShooter(int rx, int ry) {
     super(150,60,rx,ry);  //hp, size, roomx, roomy 
     FStimer=0;
  }
  void show() {
    strokeWeight(4);
    fill(black);
    circle(150,height/2,size);
   FStimer=FStimer+1;
   fill(lightGrey);
   //text(hp,150,300);
  }
  
  void act() {
   super.act();
   while (FStimer==100) {
      myObjects.add(new Follower(roomx,roomy,30)); // roomx, roomy size
      FStimer=0;
   }
      
       int j=0;
    while(j<myObjects.size()) {
     GameObject obj =myObjects.get(j);
  if(obj instanceof Hero && isCollidingWith(obj)) {
   obj.hp=0;
   }
    j++;
    } 
   
   
   
  }
}

//------------------------------------------------------------------------
class Follower extends Enemy {
  int  Timer;
  Follower(int rx, int ry) {
   super(100,50,rx,ry);  //hp, size, roomx, roomy 
   Timer=180;
    location=new PVector(width/2,height/2);
  }
Follower(int rx, int ry, int s) { // for follower shooter
   super(15,s,rx,ry);  //hp, size, roomx, roomy 
   Timer=180;
   location=new PVector(150,height/2);
   s=size;
  }
 void show() {
    noStroke();
    fill(255);
    circle(location.x,location.y,size);
    fill(0);
    textSize(20);
    text(hp,location.x,location.y);
    
     
   //immunity timer
   Timer= Timer+1;
    
  if (Timer<180) {
    noFill();
    stroke(255);
    circle(myHero.location.x,myHero.location.y,55);
  }
    
  }
  void act() {
    super.act();
    
    velocity=new PVector(myHero.location.x-location.x,myHero.location.y-location.y);
    velocity.setMag(1);
    
  //collision code  
    if (Timer>180) {
   int j=0;
    while(j<myObjects.size()) {
     GameObject obj =myObjects.get(j);
  if(obj instanceof Hero && isCollidingWith(obj)) {
   obj.hp=obj.hp-1;
     Timer=0;
   }
    j++;
    } 
 }   
 //-------------------     
}      
}
