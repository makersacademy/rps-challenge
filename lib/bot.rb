 class Bot

   attr_reader :name

   def initialize
     @available_moves = ['rock', 'paper', 'scissors']
     @name = 'RPS_Bot'
   end

   def move
     @available_moves.sample
   end

 end
