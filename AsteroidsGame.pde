Spaceship shoot = new Spaceship();
Star [] sparkle = new Star[100];
Asteroid [] stars = new Asteroid[10];
public void setup() 
{
  size(800, 800);

for (int i = 0;i<sparkle.length ; i++)
  {
    sparkle[i] = new Star();
  }
for (int i = 0;i<stars.length ; i++)
  {
    stars[i] = new Asteroid();
  }

}

public void draw() 
{
  background(0,0,0);
  for (int i = 0;i<sparkle.length ; i++)
  {
    sparkle[i].show();
  }
  for (int i = 0;i<stars.length ; i++)
  {
    stars[i].move(); 
    stars[i].show();
  }
  shoot.move();
  shoot.show();
}

public void keyPressed()
{

  if (keyCode == 38) //arrow up
  {
    shoot.accelerate(1);
  }
  else if (keyCode == 40) //arrow down
  {
    shoot.accelerate(-1);
  }
  else if (keyCode == 37) //arrow left
  {
    shoot.rotate(-5);
  }
  else if (keyCode == 39) //arrow right
  {
    shoot.rotate(5);
  }
}

class Spaceship extends Floater  
{   
  public void setX(int x) {myCenterX=x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}   
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}  
  public double getDirectionY() {return myDirectionY;}  
  public void setPointDirection(int degrees) {myPointDirection = degrees;}   
  public double getPointDirection() {return myPointDirection;}  
  public Spaceship()
  {
    corners=6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = 0;
    xCorners[1] = -8;    
    yCorners[1] = -10;
    xCorners[2] = 12;
    yCorners[2] = -10;
    xCorners[3] = 25;
    yCorners[3] = 0;
    xCorners[4] = 12;
    yCorners[4] = 10;
    xCorners[5] = -8;
    yCorners[5] = 10;
    myColor = color(255, 0, 0);
    myCenterX = 400;
    myCenterY = 400;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;

  }
}

class Star 
{
  private int myX, myY, myColor;
  public Star()
  {
    myX=(int)(Math.random()*800);
    myY=(int)(Math.random()*800);
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }

}


abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 

