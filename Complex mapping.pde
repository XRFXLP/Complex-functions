 void setup()
{
  size(650,350);
  background(0);
  frameRate(100);
  fill(0);
  stroke(153,201,53);
  rect(12.5,12.5,300,300);
  rect(337.5,12.5,300,300);
  smooth(10);
}

float y = -150,x = -150,count  = 0,u,v,pu,pv;
void draw()
{ 
  textSize(30);
  fill(0);
  strokeWeight(1);
  translate(325/2,350/2);
  
 
  if(y<300/2 || x<300/2)
  {
    if(count == 0)
    {
      x++;
      stroke(x+100,y+130,x+y+200);
      if(x>300/2)
      {
        x = -300/2;
        y+= 20/2;
      }
    }
      else if(count == 1)
      {
        y ++;
        stroke(x + 100,y+ 130,x+y+200);
        if(y>300/2)
        {
          y = -300/2;
          x += 20/2;
        }
      }
  }
      
  if(y == 300/2)
  {
    count = 1;
  }
  
  point(x,y);
 
  translate(650/2,0);
 
  
  u = constrain( x*5000/(x*x + y*y), -300/2,300/2);
  v = constrain(-y*5000/(x*x + y*y), -300/2,300/2);
  point(u,v);

  
}
