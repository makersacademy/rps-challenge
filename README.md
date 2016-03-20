H1 ROCK PAPER SCISSORS!

H3 Approach

1. Eventhough I will want to have a 'Game Title' page I will stick to the user stories and finish a MVP. After initializing the project with sinatra and capybara I set up web_helper and a basic route structure. Prelimarly I created /, player, weapons. 

2. On /weapons the player will choose a weapon and is then redirected to /outcome. Depending on the result either win.erb oder loose.erb is displayed. 

3. After setting up the root I created the actual game logic.
i. I create a player and game class
ii. /player_form will initiate a game and save a player instance in that instance. 
iii. The game class is in responsible for keeping track of players and score. I therefore create a outcome class to determine the winner of the round.

4. Once the MVP was ready, a single player can enter their name, choose a weapon, and returns win, loose or tied, I added some extra functions such as displaying the choices of both player and adding a game score, if one wants to play multiple games.

