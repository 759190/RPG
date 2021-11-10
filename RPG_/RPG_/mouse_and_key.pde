
 

void keyPressed () {
if (keyCode=='W') wkey=true;
if (keyCode=='S') skey=true;
if (keyCode=='D') dkey=true;
if (keyCode=='A') akey=true;
if (keyCode==' ') spacekey=true;

}

void keyReleased() {
if (keyCode=='W') wkey=false;
if (keyCode=='S') skey=false;
if (keyCode=='D') dkey=false;
if (keyCode=='A') akey=false;
if (keyCode==' ') spacekey=false;
}
