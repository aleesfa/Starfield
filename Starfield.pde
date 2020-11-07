Particle[] part;
//Particle bob;
void setup()
{
  size(400, 400);
  part = new Particle[100];
  for(int i = 0; i < part.length; i++)
  {
    part[i] = new Particle();
  }
  part[0] = new OddballParticle();
  //bob = new Particle();
}
void draw()
{
  background(0);
  for(int i = 0; i < part.length; i++)
  {
    part[i].show();
    part[i].move();
  }
  //bob.show();
  //bob.move();
}
class Particle
{
  double x, y, speed, angle;
  int col;
  public Particle()
  {
    x = y = 200;
    angle = Math.random() * 2 * Math.PI;
    speed = Math.random() *8;
    col = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  public void move()
  {
    x += Math.cos(angle)*speed;
    y += Math.sin(angle) * speed;
  }
  public void show()
  {
    fill(col);
    ellipse((int)x, (int)y, 5, 5);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  public OddballParticle()
  {
    x = y = 10;
    angle = Math.random() * 2 * Math.PI;
    speed = Math.random() *4;
    col = color(1443, 1324, 133, 1245);
  }
  public void move()
  {
    x += Math.cos(angle)+ speed;
    y += Math.sin(angle) + speed;
  }
  public void show()
  {
    fill(col);
    ellipse((int)x, (int)y, 9, 15);
  }
}
