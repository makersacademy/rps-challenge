# RPS Challenge

Weekend challenge (week 2) of Makers bootcamp. 
I created a Rock Paper Scissors game on the web to meet these user story requirements: 
* player can register my name before playing the online game
* player can play rock/paper/scissors
* player is presented the choices (rock, paper and scissors)
* player can choose one of those options
* game/computer chooses a random option (rock, paper, scissors)
* winner will be declared

I am partway through satisfying the final requirement i.e. implementing methods within the model layer that calculate a result (win/lose/draw, using a hash of hashes - see Gameplay.rb) and a win? method to return true/false dependent on result. Currently struggling to fix errors in all my feature tests due to @player_choice and @opponent_choice being nil. Think it's because the if @turn.win? is calling the result and win methods and looking for @player_choice and @opponent choice right after we enter player name but before the choices aren't defined... therefore they are nil. 
NoMethodError:
       undefined method `[]' for nil:NilClass

nb: I got stuck on a few steps of how to implement this challenge, and I learned a lot on how to implement this sort of game from youtube video Sam Morgan