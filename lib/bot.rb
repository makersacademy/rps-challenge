 class Bot

   attr_reader :name

   def initialize
     @name = 'RPS_Bot'
   end

   def move
     rand(3)
   end

 end
