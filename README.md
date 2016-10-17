# RPS Challenge

## Setup

To set up the app locally:

1. Clone the following repo to your desktop: https://github.com/wirsindpapst/rps-challenge.git
2. Navigate to the folder created
3. In your chosen terminal run 'bundle'
4. Initiate a server session by running 'ruby RPSApp.rb'
5. In your browser of choice, enter 'http://localhost:4567/outcome'

## Play

It's pretty straightforward ...

* Enter your name(s) in the field provided, if you are playing against the computer, leave the 'Player 2' field blank
* Click the option you wish to choose (player 1 and 2, if playing against the computer this will be chosen randomly)
* The outcome of the match up will be displayed on the screen, you will then have the option to:
 - Play again with the current player
 - Return to the main screen to enter a new set of players

## Notes on the design

- Visually, I have went for a crisp, clean and timeless aesthetic through the use of black Times New Roman against white (read anything I did in the limited time available to prettify would have made it look naff...)
- The build includes creation of a specific Weapon object, to store the choice of weapon and to be passed into the Game object. It then acts as intermediary between the Game and the Player class
- Simple logic in the controller and views was favoured over proliferating multiple unnecessary routes
- Creation of a specific Computer object was not implemented as I cannot see the advantage in doing so, and builds unnecessary complexity.
