 class Bot

   attr_reader :name, :move

   def initialize
     @name = 'RPS_Bot'
     @move = rand(3)
   end

   def print_move
     return 'rock' if @move == 0
     return 'paper' if @move == 1
     return 'scissors' if @move == 2
   end

 end
