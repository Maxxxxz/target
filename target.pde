int X = 0;
int Y = 0;
int W = 700;
int H = 500;

tLine xline, yline;

void settings()
{
  size(W, H);
}

void setup()
{
  stroke(255);
  frameRate(60);
  xline = new tLine(false, 0.0, true, 2.5);
  yline = new tLine(true, 0.0, true, 2.5);
}

void draw()
{
  background(0);
  if(xline.pos < -1 || xline.pos > W-1)
  {
    xline.reverse();
  }
  if(yline.pos < -1 || yline.pos > H-1)
  {
    yline.reverse();
  }
  xline.update();
  yline.update();
  //check if x&&y line overlap secondary object and get that object
  
}
