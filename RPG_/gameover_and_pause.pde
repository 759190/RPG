void gameover() {
   reset();
  background(darkBlue);
  fill(lightGrey);
  textSize(100);
  text("YOU LOSE",width/2,200);  
  click();  
 button2.show();
 if (button2.clicked) {
mode=INTRO;

 
 
} 
}

void win() {

   reset();
  background(darkBlue);
  fill(lightGrey);
  textSize(100);
  text("YOU WIN",width/2,200);  
  click();  
 button2.show();
 if (button2.clicked) {
mode=INTRO; 
}
 }

 
 
void reset() { //reset-------------------------------------------
 //create objects
  myObjects=new ArrayList<GameObject>(1000);
  myHero=new Hero();
  myObjects.add(myHero);
  myObjects.add(new BouncerShooter(1, 1));



  //establishing cost
  coinCost=1;
  xpCost=1;
  bulletCost=1;
  
   //loading enemies from map
  x=0;
  y=0;
  while (y<map.height) {
    color roomColor = map.get(x, y);
    if (roomColor==room1) {
      myObjects.add(new FolShooter(x, y));
      myObjects.add(new Enemy(x, y));

    }
    if (roomColor==room2) {
      myObjects.add(new Follower(x, y));
      myObjects.add(new Tower(x, y));
    }
    if (roomColor==room3) {
      myObjects.add(new Enemy(x, y));
    }
    x++;
    if (x==map.width) {
      x=0;
      y++;
    }
  }
  
    }//end
