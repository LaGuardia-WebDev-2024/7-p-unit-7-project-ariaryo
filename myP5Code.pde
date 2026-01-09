//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

var monsterSize = 30;
var teethsize = 35;
var ReyeX = 10;
var Leyex = 20;
var RirisX = 10;
var LirisX = 20;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 nostroke();
  background(255,255,255,0);
  
// the monster
fill ();
ellipse(200,298,monsterSize,monsterSize);

// left eye
fill(255,255,255)
ellipse(LeyeX,350,20,10)

// right eye
fill(255,255,255)
ellipse(ReyeX,350,10,10)


rect(185,200,15,teethSize); // left tooth
rect(185,200,15,teethSize); // right tooth

// Left Iris
fill(0,0,0)
triangle(LirisX,350,10,20)

// Right Iris
fill(0,0,0)
triangle(RirisX,350,10,10)

monsterSize = random(10,90);
ReyeX = ReyeX + 19
LeyeX = LeyeX + 15
RirisX = RirisX + 200
LirisX = LirisX + 40
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
