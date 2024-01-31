private static int baseLimit = 10;
public void setup()
{
  background(0);
  size(400,400);
}
public void draw()
{
  sierpinski(50,250,300, baseLimit);
}
public void mouseMoved()//optional
{
  baseLimit ++;
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len, int baseLimit) 
{
  if (len <= baseLimit){
  triangle(x,y, x+len, y, x+len/2, y-len/2);
  }
  else {
  sierpinski(x,y,len/2, baseLimit);
  sierpinski(x+len/2,y,len/2, baseLimit);
  sierpinski(x+len/4,y-len/4,len/2, baseLimit);
  }
}
