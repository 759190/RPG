//game object

class GameObject {
  int size;
  PVector location;
  PVector velocity;
  
  int hp;
  
  
  GameObject() {
    location=new PVector(width/2,height/2);
    velocity=new PVector(0,0);
    hp=1;
    
  }
  
  void show() {
  }
  void act() {
 
    location.add(velocity);
    
     //if object hits wall
    if(location.y>height-100)         location.y=height-100;
    if(location.y<0+100)             location.y=0+100;
    if(location.x>width-120)         location.x=width-120;
    if(location.x<0+120)             location.x=0+120;

  }
  
}//end
