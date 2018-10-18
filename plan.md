## App

* Player
  - #play(:rock, :paper or :scissors)
    - @choice = :rock, :paper or :scissors
  - #play_random
    - @choice = random one from the list
* Game
  - #initialize(player, player)
  - result
    - return win, loss or tie based on player @choices
  -




## Pages

* Get'/'
  - title Rock Paper Scissors
  - press button to begin PVE game->get /name
* Get /name
  - enter name
  - press button to post/name
* Post /name
  - new player class with name
  - redirect to game screen
* Get /game
  - new game with player and computer player
  - press button to indicate choice
    - post /choice
* Post /choice
  - save choice in instance variable
  - get random computer choice
  - redirect /result
* Result
  - say who won
  - play again-->get /game
  - back to main screen--> get '/'
