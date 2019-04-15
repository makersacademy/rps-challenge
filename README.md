# RPS Challenge

This is a web app for rock paper scissors, where the player plays against the computer.

## Running from the command line
- Run: bundle install
- Run: rackup -p 4567
- To feature test, visit: http://localhost:4567/

## Model, View, Controller

| Controller           | View                    | Model              |
|-------------------------|----------------------------|-----------------------|
|- get to '/'             |- form to enter name<br>- redirects to '/save_name'||
|- post to '/save_name'<br>- saves player_name as parameter<br>- redirects to '/play'  | | |
|- get to '/play'           |- drop down menu for player_move<br>- redirects to '/save_move' | |
|post to '/save_move' starts new Game with player_name and player_move redirects to '/result' |  |Game class choses computer move at random, calculates who has won and creates a message for player. |
|- get to '/result'<br>- takes instance of Game and returns message | shows message |  |

