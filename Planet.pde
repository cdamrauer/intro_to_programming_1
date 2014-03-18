public class Planet{                                                  // declare the class 'Planet', public
  int[] loc;                                                          // declare one dimensional array called 'loc'      
  color myColor;                                                      // declare color value variable called 'myColor'
  int mySize;                                                         // declare integer variable called 'mySize'
  int dx, dy;                                                         // declare integer variables called 'dx' & 'dy'
  String name;                                                        // declare string variable called 'name'

  
  public Planet(){                                                    // create function called 'Planet', not passed any values
    println("making an planet");                                      // print 'making an planet' which is technically not correct English
    loc = new int[2];
    assignDefaultValues();                                            // call function 'assignDefalutValues'
  }
  
  void assignDefaultValues(){                                         // creating the assignDefaultValues function, nothing returned
    println("assigning values");                                      // print 'assigning values'
    name = "a planet";                                                // 'name' variable is given string 'a planet'
    loc[0] = 100;                                                     // [0] (first) place in 'loc' array is assigned int '100'
    loc[1] = 200;                                                     // [1] place in 'loc' array is assigned int '200'
    myColor = color(255,255,0);                                       // assigning (255,255,0) as values for 'myColor'
    mySize = 50;                                                      // assigning '50' as int value for variable 'mySize'
    dx = dy = 10;                                                     // assigning '10' as int value for variables 'dx' & 'dy'
  }                                                                   // end function assignDefaultValues
  
  void drawPlanet(){                                                  // creating drawPlanet function, nothing returned
    fill(myColor);                                                    // set the fill color to value contained in varible 'myColor'
    ellipse(loc[0], loc[1], mySize, mySize);                          // draw an ellipse whose center is at x = loc[0], y = loc[1], and has mySize width and height
    if( loc[0] + mySize / 2 >= 600 || loc[0] - mySize / 2 <= 0 ){     // basically, if the edge of the ball hits the top or bottom edge of the screen, dx is reversed
      dx *= -1;
    }
    if( loc[1] + mySize / 2 >= 600 || loc[1] - mySize / 2 <= 0 ){     // basically, if the edge of the ball hits the left or right edge of the screen, dy is reversed
      dy *= -1;
    }
    loc[0] += dx;                                                     // value in loc[0] = value in loc[0] + dx
    loc[1] += dy;                                                     // value in loc[1] = value in loc[1] + dy
//    println(name+ " loc: " + loc[0] + ", " + loc[1]);
  }
}

public class Meteor extends Planet {                                  // declare the class 'Meteor' as public and inherits variables and data from 'Planet'
  
  boolean followMouse;                                                // delcalre a boolean called 'followMouse'
  
  public Meteor(){                                                    // create public method called 'Meteor'
    super();                                                          // inherit constructors of the superclass (ie. 'Planet') Q: does this do the same thing as 'extends'?
    println("actually im a meteor");                                  // print 'actually im a meteor'
    
    myColor = color( random(255), random(255), random(255) );         // fill color variable with random RGB values
    
    dx = (int) random(3, 17);                                         // set variable 'dx' as a random integer between 3 and 17
    dy = (int) random(3, 17);                                         // set variable 'dy' as a random integer between 3 and 17
    
    followMouse = false;                                              // set boolean 'followMouse' as false
  }                                                                   // end method 'Meteor'
  
  void drawPlanet(){                                                  // create 'drawPlanet' function, returning nothing
  
//    println ("I do you");
    if ( followMouse ) {                                              // if boolean 'followMouse' is true then
      fill(myColor);                                                  // set fill as 'myColor'
      loc[0] = mouseX;                                                // set 'loc[0]' as value of mouseX
      loc[1] = mouseY;                                                // set 'loc[1]' as value of mouseY
      ellipse(loc[0], loc[1], mySize, mySize);                        // draw an ellipse whose center is at x = loc[0], y = loc[1], and has mySize width and height
    }                                                                 // end if statement
    else{                                                             // begin else statement (if followMouse = false)
      super.drawPlanet();                                             // runs the 'drawPlanet' function in Planet superclass, I believe
    }                                                                 // end else statement
    
  }                                                                   // end 'drawPlanet' function
  
}                                                                     // end Meteor class
