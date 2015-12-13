class Game

 attr_reader  :players
 def initialize(player_1, player_2="Computer")
   @players = [player_1,player_2]
   @winner = nil
   @answer_p1 = nil
   @answer_p2 = nil
 end

end
