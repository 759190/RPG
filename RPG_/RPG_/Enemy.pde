class Enemy extends GameObject {
  
  Enemy() {
    location=new PVector(width/2,height/2);
    velocity=new PVector(0,0);
    hp=100;
    roomx=1;
    roomy=1;
  }
  void show() {
   
    noStroke();
    fill(#7BAA16);
    circle(location.x,location.y,50);
    fill(0);
    textSize(20);
    text(hp,location.x,location.y);
  
  }
}
