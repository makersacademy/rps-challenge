# Rock, Paper, Scissors Game
This challenge forms part of my weekend submission for Week 3 of the Makers Academy program. The game is a single player game that is designed to ease the stress/boredom of the marketing department.

## Features
The game is a single player game, where a player can play against a computer. The player selects their choice first and then the computer will draw their choice, without reference to the player's choice. The winner is then chosen based upon the well-known rules of Rock, Paper and Scissors. 

These rules are:
* Rock smashes scissors <Rock wins>
* Scissors cuts paper <Scissors Win>
* Paper wraps rock -> <Paper wins>

## Playing the game:
1. In the terminal, ensure that you are in the <root> directory.
2. Rackup the application: <rackup -p {enter 4 digit port number}>
3. Navigate to the localhost page <localhost:{you're 4 digit port number}>
4. Enter in your name
5. Play the game
6. Choose your *weapon* 
7. Play the game

## Future development
The game features could be developed further by:
* creating the ability for multiple players to play against each other
* allowing for the creation of users to track the score
* enabling users to set and play multiple rounds of the game in each match
* creating a tally of the historical scores

The usability of the game could be developed by:
* hosting the program on a server for users to play on different computers
* enhancing the CSS to include hover buttons, animation, colour styling and a visual design language

## Architecture
The program is built inside a rack-compliant structure. The model is driven by <Ruby> and the application leverages <Sinatra>. 

## Design

### System Design
The game leverages the Model, View, Controller methodology.

<Model> As the game is relatively simple the game was designed using a **domain model** that contains a single Class (Game). This class is responsible for playing the game but holds no other information, therefore it passes the *Single Responsibility Principal*.  

<Controller> The controller contains a number of simple routes that redirect the player as they progress through the page. Post methods are used to prevent any sensitive information being made explicitly available.

<Views> The views are built in HTML using CSS. The views have a significant opportunity for improvement through the application of styling; this was not completed at the time but is an opportunity for future development

## Testing
The tests are run through <rSpec> with the Capybara DSL included to run feature tests. 

### Running the tests
The tests can be run by running the command <rSpec> in the root directory.

### Test performance
The tests have achieved 100% passes & 100% coverage.
Test helpers are used to keep the code <DRY>.