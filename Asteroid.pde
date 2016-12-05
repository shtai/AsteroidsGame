
class Asteroid extends Floater  
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
  private int starSizeMult, speed;
  public Asteroid()
  {
  	starSizeMult = (int)((Math.random())*5)+1;
    corners=10;
    xCorners = new int[corners];
    yCorners = new int[corners];
     xCorners[0] = 0;
	    yCorners[0] = -12*starSizeMult;
	    xCorners[1] = 3*starSizeMult;
	    yCorners[1] = -4*starSizeMult;
	    xCorners[2] = 11*starSizeMult;
	    yCorners[2] = -4*starSizeMult;
	    xCorners[3] = 5*starSizeMult;
	    yCorners[3] = 1*starSizeMult;
	    xCorners[4] = 8*starSizeMult;
	    yCorners[4] = 9*starSizeMult;
	    xCorners[5] = 0*starSizeMult;
	    yCorners[5] = 5*starSizeMult;
	    xCorners[6] = -8*starSizeMult;
	    yCorners[6] = 9*starSizeMult;
	    xCorners[7] = -5*starSizeMult;
	    yCorners[7] = 1*starSizeMult;
	    xCorners[8] = -11*starSizeMult;
	    yCorners[8] = -4*starSizeMult;
	    xCorners[9] = -3*starSizeMult;
	    yCorners[9] = -4*starSizeMult;
    myColor = color(255, 255, 0);
    myCenterX = (int)((Math.random()*800));
    myCenterY = (int)((Math.random()*800));
    myDirectionX = (int)((Math.random()*4))+1;
    myDirectionY = (int)((Math.random()*4))+1;
    myPointDirection = 0;
    speed = (int)((Math.random()*20));
  }



}