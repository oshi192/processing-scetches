PVector wing[][];
int n=20;
float k=10;
float c=0;
float move=0;

Point []p=new Point[4000];
void setup()
{
  colorMode(HSB,100);
  fullScreen();
  //size(800,800);
  for(int i=0;i<p.length;i++)
  {
   p[i]=new Point(); 
  }  
  
  wing=new PVector[height/n][width/n];
  for(int j=0;j<height/n;j++)
  {
    for(int i=0;i<width/n;i++)
    {
      float angle =noise(i/k,j/k)*4*PI;
      wing[j][i]=new PVector(cos(angle),sin(angle));
    }
  }
  background(0,0,0); 
}

void draw()
{  
  move+=0.01;
 c+=0.1;
 stroke(255,0,0);
 for(int j=0;j<height/n;j++)
  {
    for(int i=0;i<width/n;i++)
    {
      float angle =noise(i/k,j/k,move)*4*PI;
      wing[j][i]=new PVector(cos(angle),sin(angle));
    }
  }
  for(int i=0;i<p.length;i++)
  {
    PVector f = wing [int(p[i].position.y/n)][int(p[i].position.x/n)] .copy();
    f.x*=0.05;
    f.y*=0.05;
    p[i].velocity.add(f);
    if(p[i].velocity.mag()>1)p[i].velocity.setMag(1);
    p[i].update();  
  }
}