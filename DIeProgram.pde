 Die bob;
 int numDots;
 int dotStore;
 void setup()
  {
      size(1000,1050);
      noLoop();
  }
  void draw()
  {
    int heHe = (int)(Math.random()*60)+1;
      background(170+(int)(Math.random()*11));
      for (int x = 0; x <= 950; x+=50){
        for (int y = 0; y <= 950; y+=50){
      bob = new Die(x,y);
      bob.roll();
      bob.show();//your code here
        }
      }
      fill(0);
      textSize(40);
      text("Number of Dots is ", 250+27, 1040);
      text(numDots, 609+27, 1040);
      numDots-=dotStore;
      if (heHe == 8){
        fill(255,0,0);
        text("hehe!", 5, 1040);
      }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myRoll, myX, myY;
      Die(int x, int y) //constructor
      {
          //myRoll = 6;
          myX = x;
          myY = y;//variable initializations here
      }
      void roll()
      {
          myRoll = (int)(Math.random()*6)+1;//your code here
      }
      void show()
      {
          fill(245+(int)(Math.random()*11));
          rect(myX,myY,50,50);//your code here
          fill(0);
          if (myRoll == 1 || myRoll == 3 || myRoll == 5){
            ellipse(myX+25,myY+25,10,10);
          }
          if (myRoll == 2 || myRoll == 4 || myRoll == 5 || myRoll == 6){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
          }
          if (myRoll == 3 || myRoll == 4 || myRoll == 5 || myRoll == 6){
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+40,10,10);
          }
          if (myRoll == 6){
            ellipse(myX+10,myY+25,10,10);
            ellipse(myX+40,myY+25,10,10);
          }
          if (myRoll == 1)
          numDots+=1;
          if (myRoll == 2)
          numDots+=2;
          if (myRoll == 3)
          numDots+=3;
          if (myRoll == 4)
          numDots+=4;
          if (myRoll == 5)
          numDots+=5;
          if (myRoll == 6)
          numDots+=6;
          dotStore=numDots;
      }
  }
