require_relative 'game'
 class Computer

   attr_reader :choice

   def initialize
     @choice = random
   end

   def random
     ["paper", "rock", "scissors"].sample
   end

  end
