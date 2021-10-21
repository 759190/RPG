void intro() {
 rectMode(CENTER);
  noStroke();
  fill(green);
  rect(width/2,height/2,width,height);
 
 //gif
  myGIF.show();
  
  //text
  fill(darkGreen);
  textAlign(CENTER);
  textSize(70);
  text("Darkness",width/2,200);  
 
 //start button
   click();  
 button1.show();
 if (button1.clicked) {
mode=GAME;
}
  
}

void introClicks() {  
 // mode=GAME;
  
}
//----------------------------------------------
void game() {
  rectMode(CENTER);
  noStroke();
  //background
  fill(midGreen);
  rect(width/2,height/2,width,height);
  //line
  stroke(darkGreen);
  line(0,0,width,height);
  line(width,0,0,height);
  //smaller rectangle
  fill(green);
  stroke(darkGreen);
  rect(width/2,height/2,580,428);
  
}

void gameClicks() { 
 mode=PAUSE;
}
