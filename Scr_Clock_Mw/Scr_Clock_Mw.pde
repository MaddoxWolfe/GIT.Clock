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
 background(255);
  drawClock(width/2,height/2,900,"Wolfe.inc");
}

void drawClock(float x, float y,float size,String word)//draws an Analog clock
{
  fill(455);
  stroke(0);
  pushMatrix();
  translate(x,y);
  strokeWeight(size/20);
  ellipse(0,0,size,size);
  drawMinuteHand(size);
  drawHourHand(size);
  drawSecondHand(size);
  drawNumerals(size);
  fill(0);
  textAlign(CENTER);
  textSize(25);
  text(word,0,-(size/2-300));
  popMatrix();
}
void drawHourHand(float hourLength)// draws the hour hand
{
  pushMatrix();
  pushStyle();
  stroke(0);
  int clockHour = hour();
  strokeWeight(hourLength/50);
  rotate(radians(((360/12)*clockHour)+(minute()*30/60)));
  line(0,0,0,-hourLength/4);
  popStyle();
  popMatrix();
}
void drawMinuteHand(float minLength)//Draws the minute hand
{
  pushMatrix();
  pushStyle();
  stroke(0);
  stroke(0);
  int clockMinute = minute();
  strokeWeight(minLength/50);
  rotate(radians((360/60)*clockMinute));
  line(0,0,0,-minLength/2.5);
  popStyle();
  popMatrix();
}
void drawSecondHand(float secLength)
{
  pushMatrix();
  pushStyle();
  stroke(455,0,0);
  int clockSecond = second();
  strokeWeight(5);
  rotate(radians((360/60)*clockSecond));
  line(0,0,0,-secLength/2.5);
  popStyle();
  popMatrix();
}
void drawNumerals( float size)
{
  pushMatrix();
  pushStyle();
  stroke(0);
  for(int count=1;count<=12;count+=1)
  {
    
    pushMatrix();
    rotate(radians(360/12*count));
   strokeWeight(size/30);
   line(0,-(size/2-50), 0, -(size/2));
   popMatrix();
  }
  popStyle();
  popMatrix();
}
