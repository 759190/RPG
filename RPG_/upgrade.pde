void upgrade() {
  background(0);
  fill(lightGrey);
  textSize(50);
  text("$", width/2-30, 540);
  text(myHero.money, width/2, 540);
  text("UPGRADES", width/2, 50);
  textSize(30);          // cat = speed, invinciblity - double drop?
  text("Coin Value:  "+myHero.coinValue, 300, 150); // max hp, coin drop, hp drop (luck)
  text("Damage:", 300, 275);
  text("Item 3", 300, 400);
  text("xp:"+myHero.xp, 50, 50); //xp counter



  click();  
  button3.show(); //game
  button9.show();// item 1
  button10.show(); // item 2
  button11.show(); // item 3
  button8.show(); // back
  if (button3.clicked) mode=GAME;
  if (button8.clicked) mode=SHOP;
  if (button9.clicked && myHero.xp>=1) {
    myHero.coinValue=myHero.coinValue+1;
    myHero.xp=myHero.xp-1;
  }
}
