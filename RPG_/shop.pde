color rectcolor;
boolean boughtOrange;
boolean boughtWhite;
int whiteCost;
int orangeCost;
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
  //boughtOrange=false;
  //boughtWhite=false;


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


  orangeCost=1;
  whiteCost=1;

  if (button3.clicked) mode=GAME;
  if (button4.clicked ) {
    whichCat=3;
    currentAction = blackStill;
  }
  fill(200);
  if (button5.clicked && myHero.money>=orangeCost && boughtOrange==false) {
    myHero.money=myHero.money-orangeCost;
    boughtOrange=true;
  }

  if (boughtOrange==true) {
    whichCat=1;
    currentAction = orangeStill;
  }

  if (button6.clicked && myHero.money>=whiteCost && boughtWhite==false) {
    myHero.money=myHero.money-whiteCost;
    boughtWhite=true;
  } 
  if (boughtWhite==true) {
    whichCat=2;
    currentAction = whiteStill;
  }  


  if (button7.clicked) {
    mode=UPGRADE;
  }

  if (whichCat==1) {
    fill(green);
    rect(width/2, 250, 195, 245);
  }
  if (whichCat==2) {
    fill(green);
    rect(width/2+200, 250, 195, 245);
  }
  if (whichCat==3) {
    fill(lightGrey);
    rect(width/2-200, 250, 195, 245);
  }
  blackStill.show(100, 155, 200, 200);
  orangeStill.show(300, 155, 200, 200);
  whiteStill.show(500, 155, 200, 200);




  if (myHero.money<orangeCost && boughtOrange==false) {
    noStroke();
    fill(255);
    rect(width/2, 151, 90, 25);
    fill(0);
    text("Cost: $"+orangeCost, width/2, 150);
  }
  if (myHero.money<whiteCost && boughtWhite==false) {
    noStroke();
    fill(255);
    rect(width/2+200, 151, 90, 25);
    fill(0);
    text("Cost: $"+whiteCost, width/2+200, 150);
  }


  //rect(width/2+200,250,195,245);
  //rect(width/2,250,195,245);
  // rect(width/2-200,250,195,245);
}
