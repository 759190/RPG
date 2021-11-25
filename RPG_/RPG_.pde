 int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int SHOP=4;

//setting dropped item types
final int HEALTH=0;
final int GUN=1;
final int COIN=2;


boolean mouseReleased;
boolean wasPressed;

color black=#1F1F20;
color darkBlue=#2B4C7E;
color blue=#567EBB;
color grey=#606D80;
color indigo=#090F27;
color lightGrey=#DCE0E6;
color yellow=#FFF36A;
color green=#7BAA16;

color room1=#8b8b8b;
color room2=#4f4f4f;
color room3=#dddddd;

PFont creepy; // font
boolean spacekey, akey, skey, wkey, dkey, onekey,twokey,threekey,pkey; //keys
int x, y;

//buttons
Button button1;
Button button2;
Button button3;
Button button4;
Button button5;
Button button6;

AnimatedGIF myGIF;
//character gifs
AnimatedGIF orangeUp;
AnimatedGIF orangeDown;
AnimatedGIF orangeLeft;
AnimatedGIF orangeRight;
AnimatedGIF orangeStill;

AnimatedGIF whiteUp;
AnimatedGIF whiteDown;
AnimatedGIF whiteLeft;
AnimatedGIF whiteRight;
AnimatedGIF whiteStill;

AnimatedGIF blackUp;
AnimatedGIF blackDown;
AnimatedGIF blackLeft;
AnimatedGIF blackRight;
AnimatedGIF blackStill;


Hero myHero;

//Image
PImage map;
color northRoom, eastRoom, southRoom, westRoom;

//game objects
ArrayList<GameObject> myObjects;
ArrayList<Darkness> dark;

//Darkness dark;

void setup () {
  //character gifs
  //orange cat
  //noCursor();
  orangeUp=new AnimatedGIF(12, 2, "orangeUP/sprite_", ".png"); 
  orangeDown=new AnimatedGIF(12, 2, "orangeDOWN/sprite_", ".png"); 
  orangeLeft=new AnimatedGIF(12, 4, "orangeLEFT/sprite_", ".png");
  orangeRight=new AnimatedGIF(12, 4, "orangeRIGHT/sprite_", ".png"); 
  orangeStill=new AnimatedGIF(12, 1, "orangeSTILL/sprite_", ".png"); 
  //white cat
  whiteUp=new AnimatedGIF(12, 2, "whiteUP/sprite_", ".png"); 
  whiteDown=new AnimatedGIF(12, 2, "whiteDOWN/sprite_", ".png"); 
  whiteLeft=new AnimatedGIF(12, 4, "whiteLEFT/sprite_", ".png");
  whiteRight=new AnimatedGIF(12, 4, "whiteRIGHT/sprite_", ".png"); 
  whiteStill=new AnimatedGIF(12, 1, "whiteSTILL/sprite_", ".png"); 
  //black cat
  blackUp=new AnimatedGIF(12, 2, "blackUP/sprite_", ".png"); 
  blackDown=new AnimatedGIF(12, 2, "blackDOWN/sprite_", ".png"); 
  blackLeft=new AnimatedGIF(12, 4, "blackLEFT/sprite_", ".png");
  blackRight=new AnimatedGIF(12, 4, "blackRIGHT/sprite_", ".png"); 
  blackStill=new AnimatedGIF(12, 1, "blackSTILL/sprite_", ".png"); 


  size(800, 600);
  creepy=createFont("creepy.ttf", 200); //font

  //create objects
  myObjects=new ArrayList<GameObject>(1000);
  myHero=new Hero();
  myObjects.add(myHero);
  //myObjects.add(new Enemy());
  // myObjects.add(new FolShooter(1,3));
  //myObjects.add(new Follower(2,1));







  button1=new Button ("START", width/2, 350, 250, 100, blue, darkBlue); //start button
  button2=new Button ("TRY AGAIN", width/2, 450, 270, 120, blue, darkBlue); //start button
  button3=new Button ("Back", 650, 60, 110, 50, blue, darkBlue); //shop button
  button4=new Button ("", width/2-200, height/2, 200, 300, blue, darkBlue); // cat 1
  button5=new Button ("", width/2, height/2, 200, 300, blue, darkBlue); //cat 2
  button6=new Button ("", width/2+200, height/2, 200, 300, blue, darkBlue); //cat 3

  myGIF=new AnimatedGIF(5, 27, "frame_", "_delay-0.1s.gif", 0, 0, width, height); //intro gif

  map=loadImage("Map.png");


  //create darkness

  dark=new ArrayList<Darkness>(1000);
  int size=6;
  int x=0, y=0;
  int i=0;
  while (i<14500) {
    dark.add(new Darkness(x, y, size));
    x=x+size;
    if (x>width) {
      x=0;
      y=y+size;
    }

    i++;
  }

  //loading enemies from map
  x=0;
  y=0;
  while (y<map.height) {
    color roomColor = map.get(x, y);
    if (roomColor==room1) {
      myObjects.add(new FolShooter(x, y));
    }
    if (roomColor==room2) {
      myObjects.add(new Follower(x, y));
    }
    if (roomColor==room3) {
      myObjects.add(new Enemy(x, y));
    }
    x++;
    if (x==map.width) {
      x=0;
      y++;
    }
    
  }

}

void draw() {








  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {  
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==SHOP) {
    shop();
  } else {
    println("Error: Mode= " + mode);
  }
}
