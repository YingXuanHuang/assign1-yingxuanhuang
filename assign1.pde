PImage imgBg, imgLifeOne, imgLifeTwo, imgLifeThree, imgSoil, imgGroundhog;
PImage imgSoldier, imgRobot;
int soldierX, soldierY;
int robotX, robotY;
int lightX, speedLightX;

void setup() {
  size(640, 480);
  // image
  imgBg= loadImage("img/bg.jpg");
  imgLifeOne= loadImage("img/life.png");
  imgLifeTwo= loadImage("img/life.png");
  imgLifeThree= loadImage("img/life.png");
  imgSoil= loadImage("img/soil.png");
  imgGroundhog= loadImage("img/groundhog.png");
  imgSoldier= loadImage("img/soldier.png");
  imgRobot= loadImage("img/robot.png");
  
  // soldier move
  soldierX =-80;
  soldierY =80*floor(random(2,6));
  
  // robot location
  robotX =80*floor(random(2,8));
  robotY =80*floor(random(2,6));
}


void draw() {
  
  // image
  image(imgBg,0,0);
  image(imgLifeOne,10,10);
  image(imgLifeTwo,80,10);
  image(imgLifeThree,150,10);
  image(imgSoil,0,160);
  image(imgSoldier,soldierX,soldierY);
  image(imgRobot,robotX,robotY);
  
  
  // lawn
  noStroke();
  colorMode(RGB);
  fill(124,204,25);  //green
  rect(0,145,640,15);
  
  // sun
  stroke(255,255,0);  //orange
  strokeWeight(5);
  fill(253,184,19);  //yellow
  ellipse(590,50,120,120);
  
  // imageGrounghog
  image(imgGroundhog,280,80);
  
  // soldier move
  soldierX+=4;
  if(soldierX>=width){
   soldierX=-80; 
  }
  
  // robot light
  stroke(255,0,0);  //red
  strokeWeight(10);
  
  speedLightX-=2;
  lightX= robotX+25+speedLightX;
  line(lightX,robotY+37,min(lightX+40,robotX+25),robotY+37);
  
  speedLightX%=185;
  
}
