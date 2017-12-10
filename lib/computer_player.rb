class Computer

attr_reader :hands

def initialize
 @hands = ["rock", "paper", "scissors"]
end

def select_hand
  @hands.sample
end
end
