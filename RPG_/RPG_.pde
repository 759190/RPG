int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

 boolean mouseReleased;
 boolean wasPressed;
 
color darkGreen=#555936;
color midGreen=#637343;
color green=#A2A633;
color orange=#F2B138;
color yellow=#F2CD5C;
 
Button button1;
AnimatedGIF myGIF;

void setup () {
  size(800,600);
   button1=new Button ("START",width/2,350,250,100,midGreen,green); //start button
   myGIF=new AnimatedGIF(35, "frame_","_delay-0.03s.gif",0,0,width,height); //intro gif
}

void draw() {
   
  
 
  
  if (mode==INTRO) {
    intro();
  }else if (mode==GAME) {  
   game(); 
  }else if (mode==PAUSE) {
    pause();
  }else if (mode==GAMEOVER) {
    gameover();
  }else{
    println("Error: Mode= " + mode);
  }
}
