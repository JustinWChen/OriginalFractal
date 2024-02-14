public void setup()
{
size(500, 500);
rectMode(CENTER);
framerate(10);
}
public void draw()
{
    background((int)(Math.random()*256)-10);
  myFractal(250,250,480);

}
public void mouseMoved()//optional
{
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}

public void myFractal(int x, int y, int siz) 
{

int diam = 0;
float r = 0;
while(diam < 30){
  stroke(255);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 beginShape();
    vertex(x,y-siz);
    vertex(x,siz+y);
vertex(x-siz+diam, y-siz+diam);
vertex(x-siz+diam, y-siz+diam);
vertex(x+siz, y+siz);
vertex(x+siz, y+siz);
vertex(x-siz, y-siz);
vertex(x-siz,y-siz);

endShape(CLOSE);
diam++;
r+=255/30.0;

}
  if (siz >10) 
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
  }
}
