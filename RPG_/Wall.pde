class Wall extends Enemy { // shooter
int wallx, wally;
int mTimer;

  Wall(int rx, int ry) {
     super(500,80,rx,ry);  //hp, size, roomx, roomy 
  wallx=width/2;
  wally=520;
    
    location.x=wallx;
    location.y=wally;
    mTimer=0;
    
    
   
  }
  void show() {
    fill(lightGrey);
     if (myHero.money<10) {
   rect(wallx,wally,100,10);
    mTimer++;
     }
 

  }
  
  void act() {
   //super.act();
   
   if (myHero.money<10) {
   // cannot cross blockage and message
   if (myHero.location.y>490 ) {
   myHero.location.y=490;  
     fill(lightGrey);
  text("You may pass once you have collected $10", width/2, 570);
 
   }
   }
   
   
   
  
   
  }
  }


//-------------------------------------------------------------------

class Hole extends Enemy { // shooter

  Hole(int rx, int ry) {
     super(500,80,rx,ry);  //hp, size, roomx, roomy 
    location.x=200;
    location.y=200;
    
    
   
  }
  void show() {
   ellipse(200,200,100,100);
    
 

  }
  
  void act() {
   //super.act();
   
         

   
      
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
