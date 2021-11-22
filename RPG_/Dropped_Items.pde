class DroppedItem extends GameObject {
  
  int type;
  Weapon w; 
  color c;
  
  DroppedItem (float x, float y, int rx, int ry) {
type=GUN;
w=new ShotGun();
hp=1;
location=new PVector(x,y);
velocity=new PVector(0,0);
size=15;
roomx=rx;
roomy=ry;
c=black;
  }
  
  void show() {
    stroke(black);
    fill(c);
    circle(location.x,location.y,size);
  }
  void act() {
    
  }
} //end
