class AnimatedGIF  {
  
  //instance variables
  PImage[]pics;
  int numFrames; //number of frames
  int currentFrame;
  float x,y,w,h;
  
  //constructor
    
   AnimatedGIF (int nf, String pre, String post) { //number of frames (temperary variable)
  x=width/2;
  y=height/2;
  w=width;
  h=height;
  
  numFrames=nf;
   pics=new PImage[numFrames];
   int i=0;
   while (i<numFrames) {
    pics[i]=loadImage(pre+i+post); 
    i++;
   }
   currentFrame=0;  
   }
   
   
    AnimatedGIF (int nf, String pre, String post, float _x, float _y, float _w, float _h) { //number of frames (temperary variable)
  x=_x;
  y=_y;
  w=_w;
  h=_h;
  numFrames=nf;
   pics=new PImage[numFrames];
   int i=0;
   while (i<numFrames) {
    pics[i]=loadImage(pre+i+post); 
    i++;
   }
   currentFrame=0;  
   }

   
   //behaviour
void show () {
  
  //gif
if (currentFrame==numFrames) currentFrame=0;
  image(pics[currentFrame],x,y,w,h);
currentFrame=currentFrame+1;
}
}
