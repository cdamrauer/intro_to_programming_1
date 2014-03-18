// Craig Damrauer





Planet earth;                                        // instance of class Planet called 'earth'
Planet sun;                                          // instance of class Planet called 'sun'


ArrayList<Meteor> mets;                              // defining an ArrayList with 'Meteor' objects in it called 'mets'

void setup() {                                       // creating the setup function, nothing returned
  size(600, 600);                                    // size of window
  frameRate(25);                                     // frame rate
  background(0);                                     // set background color to 0
  
  earth = new Planet();                              // set 'earth' as new instance of class Planet
  earth.name = "Earth";                              // give 'earth' instance the name 'Earth'
  earth.myColor = color(0, 0, 255);                  // set color of Earth instance
  earth.dx = earth.dy = -5;                          // set dx & dy variables for Earth instance
  earth.loc[0] = 58;                                 // set first element in loc array for Earth

  sun = new Planet();                                // set 'sun' as new instance of class Planet
  sun.name = "Sun";                                  // give 'sun' instance the name 'Sun'
  sun.mySize = 150;                                  // make size of Sun instance 150
  sun.dx = sun.dy = 5;                               // set dx & dy variables for Sun instance

  mets = new ArrayList<Meteor>();                    // defining variable 'mets' as a new array list with 'Meteor' objects in it

}                                                    // end setup

void draw() {                                        // creating a draw function, nothing returned
  background(0);                                     // set background color to 0; not sure why you need this it's in the setup

  sun.drawPlanet();                                  // pass values set for 'sun' instance to drawPlanet function
  earth.drawPlanet();                                // pass values set for 'earth' instance to drawPlanet function

  for ( Meteor met : mets) {                         // for loop that steps through an array. Here it assigns object 'Meteor' the variable name 'met' and fills it with array 'mets'
 
    met.drawPlanet();                                // execute 'drawPlanet' function with 'met' data
    println(met);
}                                                    // end for loop
  
  







}                                                    // end draw

void mouseClicked() {                                // calling the mouseClicked function, nothing returned
  mets.add( new Meteor() );                          // adds new object 'Meteor' to the array 'mets'
}

void keyPressed() {                                          // Method that looks for when a key is pressed
  if ((key == 'x' || key == 'X') && ( !mets.isEmpty() )) {     // if the key is X or x AND array 'mets' is NOT (!) empty then. . .
    mets.remove(0);                                          // remove the first element in the 'mets array'

  }                                                          // end if

  if (key == 'b' || key == 'B') {
  make most recent instance of Meteor's followMouse = true;

  }
    
  if (key == 'n' || key == 'N') {
  make most recent instance of Meteor's followMouse = false;
  }
    


}                                                    // end keyPressed method



