class Ball
{
  PVector pos;
  int size;
  PVector spd = new PVector(0, 0);
  int nombreAleatoirex = 1 + (int)(Math.random() * ((20 - 1) + 1));
  int nombreAleatoirey = 1 + (int)(Math.random() * ((20 - 1) + 1));
  int sens = 1;
  int sensx = 1;
  int Changement = 0;
  int Changementx = 0;
  
  Ball(int _size)
  {
    pos = new PVector(width/2, height/2);
    size = _size;
  }
  
  void display()
  {
    ellipse(pos.x, pos.y, size, size);
  }
  
  void movement()
  {
    ellipse(spd.x, spd.y, size, size);
    
  }
  
  void stayln()
  {
if(sens == 1)
{
if(spd.y <= height )
{
 sens = 1;
 spd.y = spd.y+nombreAleatoirey;}
 else
 {
 sens = 0;
 spd.y = spd.y-nombreAleatoirey;}
}
else
{
  if(spd.y == 0)
{
 sens = 1;
 spd.y = spd.y+nombreAleatoirey;}
 else
 {
 sens = 0;
 spd.y = spd.y-nombreAleatoirey;}
}

if(sensx == 1)
{
if(spd.x <= width)
{
 sensx = 1;
 spd.x = spd.x+nombreAleatoirex;}
 else
 {
 sensx = 0;
 spd.x = spd.x-nombreAleatoirex;}
}
else
{
  if(spd.x == 0)
{
 sensx = 1;
 spd.x = spd.x+nombreAleatoirex;}
 else
 {
 sensx = 0;
 spd.x = spd.x-nombreAleatoirex;}
}
movement();
  } 
}


Ball balls[] = new Ball[100];

void setup()
{
  size(600, 600);
  background(100);
  for (int i =0; i < balls.length; ++i)
  {
    balls[i] = new Ball(10);
  }
}

void draw()
{
  background(100);
  fill(0, 0, 255);
  for (int i = 0; i < balls.length; ++i)
  {
  balls[i].stayln();
  }

}
