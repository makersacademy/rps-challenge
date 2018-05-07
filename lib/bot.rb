 class Bot

   attr_reader :name, :current_move

   def initialize
     @name = 'RPS_Bot'
   end

   def move
     @current_move = rand(3)
   end

   def print_move
     return 'rock' if @current_move == 0
     return 'paper' if @current_move == 1
     return 'scissors' if @current_move == 2
   end

 end
