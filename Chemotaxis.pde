class Die
  {
      int myX, myY;
      double z = Math.random();
      boolean one;
      boolean two;
      boolean three;
      boolean four;
      boolean five;
      boolean six;
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
          if (z <= 0.166){
            one = true;
          }
          else if (z >= 0.166 && z <= 0.333){
            two = true;
          }
          else if (z >= 0.33 && z <= 0.50){
            three = true;
          }
          else if (z >= 0.50 && z <= 0.666){
            four = true;
          }
          else if (z >= 0.666 && z <= 0.833){
            five = true;
          }
          else if (z >= 0.833 && z <= 1){
            six = true;
          }
      }
      void show()
      {
          fill(255);
          strokeWeight(2);
          rect(myX,myY,45,45);
          fill(0);
          strokeWeight(0);
          if (one == true){
            fill(220, 118, 51);
            ellipse(myX + 22.5, myY + 22.5, 8,8);
            sum = sum + 1;
          }
          else if (two == true){
            fill(155, 89, 182);
            ellipse(myX + 11.25, myY + 11.25, 8,8);
            fill(108, 52, 131);
            ellipse(myX + 33.75, myY + 33.75, 8,8);
            sum = sum + 2;
          }
          else if (three == true){
            fill(84, 153, 199);
            ellipse(myX + 15, myY + 15, 8,8);
            fill(41, 128, 185);
            ellipse(myX + 30, myY + 15, 8,8);
            fill(36, 113, 163);
            ellipse(myX + 22.5, myY + 30, 8,8);
            sum = sum + 3;
          }
          else if (four == true){
            fill(118, 215, 196);
            ellipse(myX + (45/3), myY + (45/3), 8,8);
            fill(72, 201, 176);
            ellipse(myX + 2*(45/3), myY + (45/3), 8,8);
            fill(26, 188, 156);
            ellipse(myX + (45/3), myY + 2*(45/3), 8,8);
            fill(23, 165, 137);
            ellipse(myX + 2*(45/3), myY + 2*(45/3), 8,8);
            sum = sum + 4;
          }
          else if (five == true){
            fill(249, 231, 159);
            ellipse(myX + (45/4), myY + (45/4), 8,8);
            fill(247, 220, 111);
            ellipse(myX + 3*(45/4), myY + (45/4), 8,8);
            fill(244, 208, 63);
            ellipse(myX + (45/4), myY + 3*(45/4), 8,8);
            fill(241, 196, 15);
            ellipse(myX + (45/2), myY + (45/2), 8,8);
            fill(212, 172, 13);
            ellipse(myX + 3*(45/4), myY + 3*(45/4), 8,8);
            sum = sum + 5;
          }
          else if (six == true){
            fill(230, 176, 170);
            ellipse(myX + (45/3), myY + 3*(45/4), 8,8);
            fill (217, 136, 128);
            ellipse(myX + 2*(45/3), myY + (45/4), 8,8);
            fill(205, 97, 85);
            ellipse(myX + 2*(45/3), myY + 3*(45/4), 8,8);
            fill(192, 57, 43);
            ellipse(myX + (45/3), myY + 2*(45/4), 8,8);
            fill(169, 50, 38);
            ellipse(myX + 2*(45/3), myY + 2*(45/4), 8,8);
            fill(146, 43, 33);
            ellipse(myX + (45/3), myY + (45/4), 8,8);
            sum = sum + 6;
          }
      }
  }

