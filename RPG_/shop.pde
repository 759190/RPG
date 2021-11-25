void shop() {
 background(0);
 fill(lightGrey);
 textSize(50);
 text("$", width/2-30,50);
 text(myHero.money, width/2,50);
 
 // back to game button
 click();  
 button3.show();
 button4.show();
 button5.show();
 button6.show();
 if (button3.clicked) mode=GAME;
 if (button4.clicked)whichCat=3;
 if (button5.clicked)whichCat=1;
 if (button6.clicked)whichCat=2;

 //orange1 white2 black3
 
 
  blackStill.show(100,200,200,200);
  orangeStill.show(300,200,200,200);
  whiteStill.show(500,200,200,200);


}
