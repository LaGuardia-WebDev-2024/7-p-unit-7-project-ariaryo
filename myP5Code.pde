//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

int monsterSize = 250;
int teethSize = 35;
int ReyeX = 100;
int LeyeX = 300;
int RirisX = 180;
int LirisX = 220;

//🟢Draw Procedure - Runs on Repeat
void draw(){
 noStroke();
  background(255,255,255,0);
  
// the monster
fill (255,16,240);
ellipse(200,298,monsterSize,monsterSize);

// left eye
fill(255, 255, 255);
ellipse(LeyeX, 298, 75, 50);

// right eye
fill(255, 255, 255);
ellipse(ReyeX, 298, 75, 50);

stroke(0);
strokeWeight(2);
rect(185, 320, 15, teethSize); // left tooth
rect(220, 320, 15, teethSize); // right tooth
noStroke();

// Left Iris
fill(0, 0, 0);
ellipse(LirisX, 298, 10, 10);

// Right Iris
fill(0, 0, 0);
ellipse(RirisX, 298, 10, 10);

monsterSize = random(10, 90);
ReyeX = 180;
LeyeX = 220;
RirisX = 180;
LirisX = 220;
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

void showXYPositions(){
    fill(255,255,255,200);
    rect(470,320,150,100,10);
    fill(0,0,0);
    textSize(30);
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360);
    fill(255, 255, 255);
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255);
}
