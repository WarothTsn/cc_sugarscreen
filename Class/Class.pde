class Ball
{
  PVector pos;
  int size;
  PVector spd = new PVector(0, 0);
  int nombreAleatoirex = 1 + (int)(Math.random() * ((20 - 1) + 1));
  int nombreAleatoirey = 1 + (int)(Math.random() * ((20 - 1) + 1));
  int sens = 1;
  int sensx = 1;
  
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
    spd.x = spd.x + nombreAleatoirex;
    spd.y = spd.y + nombreAleatoirey;
    
    
    ellipse(spd.x, spd.y, size, size);
    
  }
  
  void stayln()
  {
    if(sens == 1)
{
if(spd.y <= height )
{
 sens = 1;
}
 else
{
sens = 0;
 pos.y = pos.y-nombreAleatoirey;}
}
else
{
  if(pos.y == 0)
{
 sens = 1;
 pos.y = pos.y+nombreAleatoirey;}
 else
 {
 sens = 0;
 pos.y = pos.y-nombreAleatoirey;}
}

if(sensx == 1)
{
if(pos.x <= width)
{
 sensx = 1;
 pos.x = pos.x+nombreAleatoirex;}
 else
 {
 sensx = 0;
 pos.x = pos.x-nombreAleatoirex;}
}
else
{
  if(pos.x == 0)
{
 sensx = 1;
 pos.x = pos.x+nombreAleatoirex;}
 else
 {
 sensx = 0;
 pos.x = pos.x-nombreAleatoirex;}
}
    
  }
  
}

Ball ball = new Ball(50);


void setup()
{
  size(600, 600);
  background(100);
  ball.display();
}

void draw()
{
  background(100);
  fill(0, 0, 255);
  ball.movement();
}
