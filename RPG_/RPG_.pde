int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

 boolean mouseReleased;
 boolean wasPressed;
 
color black=#1F1F20;
color darkBlue=#2B4C7E;
color blue=#567EBB;
color grey=#606D80;
color indigo=#090F27;
color lightGrey=#DCE0E6;

boolean upkey,downkey,leftkey,rightkey,spacekey;

 
Button button1;
AnimatedGIF myGIF;

Hero myHero;

//Image
PImage map;
color northRoom, eastRoom, southRoom, westRoom;

//game objects
ArrayList<GameObject> myObjects;
ArrayList<Darkness> dark;

//Darkness dark;

void setup () {
  size(800,600);
  //create objects
  myObjects=new ArrayList<GameObject>(1000);
  myHero=new Hero();
  myObjects.add(myHero);
  
  
   
 
   button1=new Button ("START",width/2,350,250,100,blue,darkBlue); //start button
   myGIF=new AnimatedGIF(5, 27, "frame_","_delay-0.1s.gif",0,0,width,height); //intro gif
  map=loadImage("Map.png");
  
  //create darkness
  
  dark=new ArrayList<Darkness>(1000);
  int size=6;
  int x=0,y=0;
  int i=0;
  while (i<14500) {
   dark.add(new Darkness(x,y,size));
x=x+size;
if (x>width) {
  x=0;
y=y+size;
}

 i++;


}
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
