# Rock, Paper, Scissors Challenge

Instructions
------

To install this game please do the following:
```
1. Clone the repo
2. Ensure you have 'bundler' installed (if not, run ```gem install bundler``` on terminal)
3. Run ```bundle``` in your terminal
4. Run the app with ```ruby app.rb``` and this will start your local server
5. Navigate your browser to ```localhost:4567/```
6. Enter your name and play the game
```

Task
----

The task was as follows:
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
The first user story requires an opening screen on which a name can be entered and maintained throughout the game.
This was implemented with a Player class which stored the name on player creation. This information was passed onto the Game class and stored for the duration of the game.

The second user story was to implement the back end logic to play rock, paper, scissors.
This was implemented in the Game class by allowing users to make certain selections (rock, paper or scissors) and then getting an automated computer to randomly choose an option. This would then be passed through a further method to determine the outcome. The game will then store the amount of games played and each players victories.

Future Intentions
----
Unfortunately, I did not apply enough OOD to the process and therefore the Game class has too many responsibilities. The Player class could easily store more logic, including moves and individual scores. An attempt was made to migrate these methods to the Player class, however, it seemed very hard to implement after having completed the entire framework (front and back end).

For future challenges I will intend to have an initial planning session (before starting code) to decide upon each class responsibility. This should ensure this does not happen again.
