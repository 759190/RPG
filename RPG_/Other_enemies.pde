class FolShooter extends Enemy {
 int FStimer;
  FolShooter(int x, int y) {
     super(100,50,x,y); 
     FStimer=0;
  }
  void show() {
    circle(150,height/2,60);
   FStimer=FStimer+1;
  }
  
  void act() {
   super.act();
   while (FStimer==100) {
      myObjects.add(new Follower(1,2,20));
      FStimer=0;
   }
   
   
  }
}



//------------------------------------------------------------------------
class Follower extends Enemy {
  int  Timer;
  Follower(int x, int y) {
   super(100,50,x,y);  //hp, size, roomx, roomy 
   Timer=180;
  }
Follower(int x, int y, int s) {
   super(15,30,x,y);  //hp, size, roomx, roomy 
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
    
    
    if (Timer>180) {
   int j=0;
    while(j<myObjects.size()) {
     GameObject obj =myObjects.get(j);
   if(obj instanceof Hero) {
   float d = dist(obj.location.x,obj.location.y,location.x,location.y);
   
   if(d<=size/2+obj.size/2) {  
   obj.hp=obj.hp-1;
     Timer=0;
   }
   }
    j++;
    } 
 }   
 //-------------------     
}      
}
