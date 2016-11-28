class Calculations

  attr_reader :player_choice, :computer_choice

def initialize(player_choice, computer_choice)
 @player_choice   = player_choice
 @computer_choice = computer_choice
end

def calculate
  return :draw if draw?
  return :winner if Game::WIN[self.player_choice] == self.computer_choice
else    :loser
end

def draw?
  self.player_choice == self.computer_choice
end

def self.current_calculation
  @current_calculation
end

def self.create(player_choice, computer_choice)
  @current_calculation = Calculations.new(player_choice, computer_choice)
end






end
