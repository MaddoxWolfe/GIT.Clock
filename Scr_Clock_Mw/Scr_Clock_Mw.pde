/*
Maddox Wolfe
Period E
1/19/2023
*/

void setup()
{
  size(1000,1000);
   
}
void draw()
{
 
  drawClock(width/2,height/2,900);
}

void drawClock(float x, float y,float size)//draws an Analog clock
{
  stroke(0);
  pushMatrix();
  translate(x,y);
  strokeWeight(size/10);
  ellipse(0,0,size,size);
  drawMinuteHand(size);
  drawHourHand(size);
  drawSecondHand(size);
  popMatrix();
}
void drawHourHand(float hourLength)// draws the hour hand
{
  stroke(0);
  pushMatrix();
  stroke(0);
  int clockHour = hour();
  strokeWeight(hourLength/50);
  rotate(radians(((360/12)*clockHour)+(minute()*30/60)));
  line(0,0,0,-hourLength/4);
  popMatrix();
}
void drawMinuteHand(float minLength)//Draws the minute hand
{
  stroke(0);
  pushMatrix();
  stroke(0);
  int clockMinute = minute();
  strokeWeight(minLength/50);
  rotate(radians((360/60)*clockMinute));
  line(0,0,0,-minLength/2.5);
  popMatrix();
}
void drawSecondHand(float secLength)
{
  pushMatrix();
  stroke(455,0,0);
  int clockSecond = second();
  strokeWeight(5);
  rotate(radians((360/60)*clockSecond));
  line(0,0,0,-secLength/2.5);
  popMatrix();
}
void drawNumerals()
{
  for(int count=0;count<12;count+=1)
  {
   
  }
}
