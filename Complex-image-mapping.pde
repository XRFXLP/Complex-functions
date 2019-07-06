PImage f;
int w;
 
 
 void setup()
{ 
//Load your image by this, image must be in same folder as the sketch file
  f = loadImage("c.jpg");
  

  size(1300,700);
  background(0);
  frameRate(1000);
  fill(0);
  stroke(153,201,53);
  rect(25,50,600,600);
  rect(675,50,600,600);
  smooth(10);
}

float y = -300,x = -300,count  = 0,u,v,pu,pv;
void draw()
{ f.loadPixels();
  textSize(30);
  fill(0);
  w = f.width;
  strokeWeight(2.5);
  translate(325,350);
  
 
  if(y<300 || x<300)
  {
    if(count == 0)
    {
      float index = (x + 300) + (y + 300)*w;
      color c = f.pixels[(int)index];
      stroke(c);
      x++;
      if(x>300)
      {
        
        x = -300;
        y += 2;
      }
     
     
    }
      else if(count == 1)
      {
       float index = (x + 300 - 1) + ( 300 + y)*w + 9;
       color c = f.pixels[(int)index];
       stroke(c);
       y ++;
       if(y>300)
       {
          y = -300;
          x += 2;
       }  
      }
  }
      
  if(y == 300)
  {
    count = 1;
  }
  
  point(x,y);
 
  translate(650,0);
 
  
  u = constrain( (x*x*x - 3*x*y*y)/300000, -300,300);
  v = constrain((3*x*x*y - y*y*y)/300000, -300,300);
  point(u,v);

  
}
