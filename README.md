# roverdiscoverer
Swift command line project test

## Project challenge
The challenge of the project is to process an entry file as an argument on Command line. 
This file must be a json, containing information about:
  Plateau -> top right corner of the stage. Origin is suposed to be on 0,0
  Rover Origin -> Initial position of the Rover
  Rover Direction -> Initial direction of the rover
  Movements -> combination of characters that interact with the Rover to move it
  
The Output should be the last position and direction of the Rover

## Project Structure
Main project has been encapsulated into a Library, to help distribution.
On **RoverDiscovererLib** we can find:
- Infrastructure :> With the main models, managers and wrappers
- Interface :> With the main scene operators

## Patterns
We have decided to use an **Strategy Pattern** to implement the different actions the Rover can do.
With this approach we decouple the action of movement and delegate the responsability to the Strategy Implementation to do its work.
We have also use a **Facade** to parse and manage the file argument.

## Tests
Some unit tests have been added to the main core of the project, to be sure our output is the one we expect.
