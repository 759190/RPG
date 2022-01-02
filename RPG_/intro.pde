void intro() {
 rectMode(CENTER);
 textFont(creepy);
  noStroke();
  fill(blue);
  rect(width/2,height/2,width,height);
 
 
 
 //gif
  myGIF.show();
  
  //text
  fill(lightGrey);
  textAlign(CENTER);
  textSize(70);
  text("Haunted Mansion",width/2,200);  
 
 //start button
   click();  
 button1.show();
 if (button1.clicked) {
mode=GAME;
}
     image(scope,mouseX,mouseY,30,30);
 
}


//----------------------------------------------
