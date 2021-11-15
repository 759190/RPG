class Enemy extends GameObject {
  int Itimer;
  Enemy() {
    location=new PVector(300,200);
    velocity=new PVector(0,0);
    hp=100;
    roomx=1;
    roomy=1;
    size=50;
      Itimer=0;
  
  }
  Enemy(int hitp, int s, int x, int y) {
   location=new PVector(300,400);
    velocity=new PVector(0,0); 
    hp=hitp;
    roomx=x;
    roomy=y;
    size=s; 
      Itimer=0;
   
  }
  void show() {
   
    stroke(0);
    fill(#7BAA16);
    circle(location.x,location.y,size);
    fill(0);
    textSize(20);
    text(hp,location.x,location.y);
    
    //immunity timer
    Itimer=Itimer+1;
    println(Itimer);
    
  if (Itimer<180) {
    noFill();
    stroke(255);
    circle(myHero.location.x,myHero.location.y,55);
  }
    
    
  }
  void act() {
    super.act();
    
    if (Itimer>180) {
   int j=0;
    while(j<myObjects.size()) {
     GameObject obj =myObjects.get(j);
   if(obj instanceof Hero) {
   float d = dist(obj.location.x,obj.location.y,location.x,location.y);
   
   if(d<=size/2+obj.size/2) {  
   obj.hp=obj.hp-1;
    Itimer=0;
   }
   }
    j++;
    } 
 } 
    
    
    
    
    
    
    
    //if bullet hits enemy
      int i=0;
    while(i<myObjects.size()) {
     GameObject obj =myObjects.get(i);
   if(obj instanceof Bullet) {
   float d = dist(obj.location.x,obj.location.y,location.x,location.y);
   if(d<=size/2+obj.size/2) {
     hp=hp- int (obj.velocity.mag()); //((Bullet) obj).damage;
     obj.hp=0;
   }
   }
    i++;
    } 
    //-----------------------------------------------------

  }
}
