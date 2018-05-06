 class Bot

   def initialize
     @available_moves = ['rock', 'paper', 'scissors']
   end

   def random_move
     @available_moves.sample
   end
 end
