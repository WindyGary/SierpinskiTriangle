public void setup()
{
  background(0);
  size(400,400);
  sierpinski(50,250,300);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20){
  triangle(x,y, x+len, y, x+len/2, y-len/2);
  }
  else {
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/4,len/2);
  }
}
