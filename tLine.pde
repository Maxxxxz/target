class tLine
{
  boolean orient;
  float pos;
  boolean dir;
  float inc;
  
  tLine(boolean orientation, float position, boolean direction, float increment)
  {
    orient = orientation;
    pos = position;
    dir = direction;
    inc = increment;
  }

  void reverse()
  {
    dir = !dir;
  }
  
  void update()
  {
    if(orient)
    {
      line(0.0, pos, W, pos);
    }
    else
    {
      line(pos, 0.0, pos, H);
    }
    if(dir)
      pos += inc;
    else
      pos -= inc;
  }

}
