void shop() {
 background(0);
 fill(lightGrey);
 textSize(50);
 text("$", width/2-30,50);
 text(myHero.money, width/2,50);
  AnimatedGIF ShopCat1;
  AnimatedGIF ShopCat2;
  AnimatedGIF ShopCat3;
  ShopCat1=blackStill;
  ShopCat2=orangeStill;
  ShopCat3=whiteStill;
 
 // back to game button
 click();  
 button3.show();
 if (button3.clicked)mode=GAME;
 button4.show();
 button5.show();
 button6.show();
 
  ShopCat1.show(100,200,200,200);
  ShopCat2.show(300,200,200,200);
  ShopCat3.show(500,200,200,200);


}
