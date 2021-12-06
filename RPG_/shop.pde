color rectcolor;
void shop() {
  background(0);
  fill(lightGrey);
  textSize(50);
  text("$", width/2-30, 540);
  text(myHero.money, width/2, 540);
  textSize(30);
  text("xp:"+myHero.xp, 50, 50); //xp counter

  textSize(80);
  text("SHOP", width/2, 50);



  //speed text
  textSize(20);
  text("SPEED LEVEL: 1", width/2-200, 400);
  text("SPEED LEVEL: 2", width/2, 400);
  text("SPEED LEVEL: 3", width/2+200, 400);

  text("MAX HP: 100", width/2-200, 430);
  text("MAX HP: 150", width/2, 430);
  text("MAX HP: 200", width/2+200, 430);

  textSize(12);
  //text("If you want to unlock all features, contact Sarah with your PayPal info.", width/2, 590);





  // back to game button
  click();  
  button3.show();
  button4.show();
  button5.show();
  button6.show();
  button7.show();


  if (button3.clicked) mode=GAME;
  if (button4.clicked) {
    whichCat=3;
    currentAction = blackStill;
  }
  if (button5.clicked) {
    whichCat=1;
    currentAction = orangeStill;
  }
  if (button6.clicked) {
    whichCat=2;
    currentAction = whiteStill;
  }
  if (button7.clicked) {
    mode=UPGRADE;
  }

  //orange1 white2 black3

  // cat icons
  blackStill.show(100, 150, 200, 200);
  orangeStill.show(300, 150, 200, 200);
  whiteStill.show(500, 150, 200, 200);
}
