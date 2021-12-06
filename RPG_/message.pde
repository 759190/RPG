class Message extends GameObject{
          //myObjects.add(new Message(location, "x"+xp);
  
  Message(float x, float y) {
location=new PVector(x,y);


  }
  
 void show() {
  textSize(20);
  text("+"+myHero.xp, location.x, location.y); //xp counter

    
  }
  
} //end 
