   //declare bacteria variables here  
  bacteria[] bob = new  bacteria [100];
  void setup()   
  {
    //initialize bacteria variables here 
    size(400,400);
  }   
  void draw()   
  {    
    //move and show the bacteria
    background(255);
      for(int i = 0; i < bob.length; i++)
    {
    bob[i] = new bacteria();
    bob[i].move();
    bob[i].show();
    }
    
  }      
 class bacteria    
 {     
   int mySize, myX, myY, myColor;
   bacteria()
   {
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   mySize = 10;
   myX = (int)(Math.random()*400);
   myY = (int)(Math.random()*400);
   }
   void move() {
     if (myX > 250 && myY < 250){
   myX = myX + (int)(Math.random()*4)-3;
   myY = myY + (int)(Math.random()*4);
     }
     if (myX < 250 && myY < 250){
   myX = myX + (int)(Math.random()*4)-1;
   myY = myY + (int)(Math.random()*4)-1;
     }
     if (myX > 250 && myY > 250){
   myY = myY + (int)(Math.random()*4)-2;
   myX = myX + (int)(Math.random()*4)-2;
     }
     if (myX < 250 && myY > 250){
   myY = myY + (int)(Math.random()*4)-3;
   myX = myX + (int)(Math.random()*4);
     }
   }
   
   void show() {
   fill(myColor);
   ellipse(myX,myY,mySize,mySize);
   }
   
 }
 
