# Rock Paper Scissors Game with one player against the computer

This app is built using:
Ruby
Sinatra
Rspec
Capybara
HTML

I started with a sequence diagram which I refined towards the end to the following:

![](./sequence_diagram.jpg)


I built the functionality of the game using mainly session and params from hidden fields at each button choice, so there was no need for a Player class.

The game starts with prompting for a players name, the allows the player to make a choice between "Rock" , "Paper", "Scissors" buttons. 
It announces the players and the computer's choice and declares the winner or a tie.
The player is then asked if they want to play again, in which case they are asked for a new choice or if not, the game returns to the index page waiting for a new player name.

Run the app with `rackup` or `ruby app.rb`
