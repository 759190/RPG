

void upgrade() {
 
  
  background(0);
  fill(lightGrey);
  textSize(50);
  text("$", width/2-30, 540);
  text(myHero.money, width/2, 540);
  text("UPGRADES", width/2, 50);
  textSize(30);          // cat = speed, invinciblity - double drop?
  text("Coin Value:  "+myHero.coinValue, 300, 150); // max hp, coin drop, hp drop (luck)
  text("Bullet Damage:  "+myHero.damage, 300, 275);
  text("More xp:  "+myHero.betterxp, 300, 400); //
  text("xp:"+myHero.xp, 50, 50); //xp counter
  


  click();  
  button3.show(); //game
  button9.show();// item 1
  button10.show(); // item 2
  button11.show(); // item 3
  button8.show(); // back
  if (button3.clicked) mode=GAME;
  if (button8.clicked) mode=SHOP;
  
  //coin value
  if (button9.clicked && myHero.xp>=coinCost) {
    myHero.coinValue=myHero.coinValue+1;
    myHero.xp=myHero.xp-coinCost;
    coinCost=coinCost*2;
  }
  //bullet damage
   if (button10.clicked && myHero.xp>=bulletCost) {
    myHero.damage=myHero.damage+1;
    myHero.xp=myHero.xp-bulletCost;
    bulletCost=bulletCost*2;

  }
  //more xp
   if (button11.clicked && myHero.xp>=xpCost) {
    myHero.betterxp=myHero.betterxp+1;
    myHero.xp=myHero.xp-xpCost;
    xpCost=xpCost*2;
  }

  //coin image
   fill(yellow);
  circle(100,155,50);
  fill(0);
  textSize(30);
 text("$",100,154); 
 
   //bullets image
  circle(80,310,5);
  circle(120,310,5);
   circle(100,280,5);
 //xp
  text("XP",100,450); 
  
  fill(255,0,0);

 //cost text
  //text("Cost: "+coinCost, 20, 210); 
  //text("Cost: "+bulletCost, 20, 210); 
  //text("Cost: "+xpCost, 20, 210); 

  
  
  
}
