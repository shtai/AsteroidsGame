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

	public Asteroid()
	{
	int corners = 10;
	xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = 12;
    xCorners[1] = 3;    
    yCorners[1] = 4;
    xCorners[2] = 11;
    yCorners[2] = 4;
    xCorners[3] = 5;
    yCorners[3] = -1;
    xCorners[4] = 8;
    yCorners[4] = -9;
    xCorners[5] = 0;
    yCorners[5] = -5;
    xCorners[6] = -8;
    yCorners[6] = -9;
    xCorners[7] = -5;
    yCorners[7] = -1;
    xCorners[8] = -11;
    yCorners[8] = 4;
    xCorners[9] = -3;
    yCorners[9] = 4;
    myColor = color(255, 0, 0);
    myCenterX = 400;
    myCenterY = 400;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
	}

	public void show(){}


}