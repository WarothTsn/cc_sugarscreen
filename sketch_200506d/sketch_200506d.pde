PVector pos = new PVector(0, 0);
int sens = 1;
int sensx = 1;
int nombreAleatoirex = 1 + (int)(Math.random() * ((20 - 1) + 1));
int nombreAleatoirey = 1 + (int)(Math.random() * ((20 - 1) + 1));
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
if(pos.y <= height )
{
 sens = 1;
 pos.y = pos.y+nombreAleatoirey;}
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

 ellipse(pos.x, pos.y, 50, 50);
 }
         
