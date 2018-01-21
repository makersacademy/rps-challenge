require_relative "player"

class Computer < Player

    WEAPONS = ["rock", "paper", "scissors"]

   def initialize(name = "computer")
     @name = name
   end

   def choice(options = WEAPONS)
     options.sample
   end
end
