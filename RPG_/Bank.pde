void bank () {
  background(0);

  textSize(80);
  fill(lightGrey);
  text("BANK", width/2, 50);
 
 //money and xp counters
    fill(darkBlue);
   noStroke();
  ellipse(width/2, 550,250,50);
  
 textSize(25);
 fill(lightGrey);
  text("xp: "+myHero.xp, width/2+50, 550); //xp counter
  text("$ "+myHero.money,width/2-50, 550);

  click();  
 
  button8.show(); //back

  if (button8.clicked) mode=UPGRADE;
      image(scope,mouseX,mouseY,30,30);

}
