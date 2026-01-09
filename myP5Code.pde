//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

var monsterSize = 30;
var teethsize = 35;
var ReyeX = 180;
var LeyeX = 220;
var RirisX = 180;
var LirisX = 220;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 nostroke();
  background(255,255,255,0);
  
// the monster
fill (255,16,240);
ellipse(200,298,monsterSize,monsterSize);

// left eye
fill(255, 255, 255);
ellipse(LeyeX, 298, 20, 10);

// right eye
fill(255, 255, 255);
ellipse(ReyeX, 298, 20, 10);

stroke(0);
strokeWeight(2);
rect(185, 320, 15, teethSize); // left tooth
rect(220, 320, 15, teethSize); // right tooth
nostroke();

// Left Iris
fill(0, 0, 0);
triangle(LirisX, 298, 8, 8);

// Right Iris
fill(0, 0, 0);
triangle(RirisX, 298, 8, 8);

monsterSize = random(10, 90);
ReyeX = 180;
LeyeX = 220;
RirisX = 180;
LirisX = 220;
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200);
    rect(470,320,150,100,10);
    fill(0,0,0);
    textSize(30);
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360);
    fill(255, 255, 255);
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255);
}
