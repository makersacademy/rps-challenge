class Game 
  OBJECTS = ['rock', 'paper', 'scissors']
  attr_reader :computer_choice

  # def initialize(player)
  #   @player = player
  # end

  def computer_choice
    OBJECTS.sample
  end
end