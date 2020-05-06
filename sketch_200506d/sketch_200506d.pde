PVector pos = new PVector(0, 0);
int sens = 1;
void setup()
{
 size(600, 600);
 background(100);
 fill(255, 0, 0);
 ellipse(width/2, height/2, 50, 50);
 
 }

void draw()
{
 background(100);
 fill(0, 0, 255);
if(sens == 1)
{
if(pos.y <= 600)
{
 sens = 1;
 pos.y = pos.y+1;}
 else
 {
 sens = 0;
 pos.y = pos.y-1;}
}
else
{
  if(pos.y == 0)
{
 sens = 1;
 pos.y = pos.y+1;}
 else
 {
 sens = 0;
 pos.y = pos.y-1;}
}
 ellipse(50, pos.y, 50, 50);
 }
         
