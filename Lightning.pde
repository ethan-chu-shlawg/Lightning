int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int size = 3;
int opacity = 1;

void setup()
{
  size(300,300);
  background(0);
  frameRate(1000);
}
void draw()
{
  while (endX<300){
    stroke((int)(Math.random()*100),(int)(Math.random()*123+122),(int)(Math.random()*100),opacity);
    strokeWeight(size);
    endX = startX + (int)(Math.random()*18-9);
    endY = startY + (int)(Math.random()*9);
    line(startX,startY, endX, endY);
    startX = endX;
    startY = endY;
    opacity++;
  }
}
void mousePressed()
{
  background(0);
  startX = 150;
  startY = 0;
  endX =150;
  endY = 0;
  size=3;
  opacity=1;
}
