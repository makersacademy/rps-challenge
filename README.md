So far I've been unable to make RSpec work. I can use Ruby or Rack to start the server, and things work fine, but RSpec always gets the 'Sinatra doesn't know this ditty' page.

So for now, RSpec just tests the model (lib).


I also got stuck at the point of trying to display e.g. 'Scissor beats Rock' on the end-page. I can't see why Game.weapon returns nil:

```[1] pry(main)> require './lib/game.rb'                                                                                         
=> true
[2] pry(main)> require './lib/player.rb'                                                                                       
=> true
[3] pry(main)> Game.create(Player.new('sdfs'))                                                                                 
=> #<Player:0x00007fd95a135ed0 @choice="", @name="sdfs">
[4] pry(main)> Game.random_move                                                                                                
=> :paper
[5] pry(main)> Game.compare(:scissors)                                                                                         
=> :player_wins
[6] pry(main)> Game.player.choice = :scissors                                                                                  
=> :scissors
[7] pry(main)> Game.weapon                                                                                                     
=> nil
[8] pry(main)> Game                                                                                                            
=> Game
[9] pry(main)> Game.state                                                                                                      
=> :player_wins ```
