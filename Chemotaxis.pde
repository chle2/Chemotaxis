    //declare bacteria variables here  
  Bacteria[] bob = new bacteria [100];
  void setup()   
  {
  	//initialize bacteria variables here 
    size(400,400);
    for(int i = 0, i < bob.length; i++)
    {
    bob[i] = new Bacteria90;
    }
  }   
  void draw()   
  {    
  	//move and show the bacteria
    background(255);
    bob[i].move();
    bob[i].show();
  }  
  class Bacteria    
  {     
  	//lots of java!   
    int myX;
    int myY; 
    int myColor;
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255),(int)(Math.random()*255));
    void move()
    {
    if(mouseX > 250 && mouseY > 250)
    {
  			myX = myX + (int)(Math.random()*5);
        myY = myY + (int)(Math.random()*5);
     }
     else if (mouseX < 250 && mouseY < 250) 
      {
  			myX = myX - (int)(Math.random()*5);
        myY = myY - (int)(Math.random()*5);
  		}
      else if(mouseY < 250 && mouseX > 250)
  		{
        myX = myX + (int)(Math.random()*5);
  			myY = myY - (int)(Math.random()*5);
      }
    }
    void show()
    {
    fill(myColor); 
    Stroke(myColor);
    ellipse(myX, myY, 20,20)
  }     
