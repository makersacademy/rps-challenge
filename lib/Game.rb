class Game

  attr_reader :player

  def initialize(name)
    @player = name
  end

  def computer_move
    %w(rock paper scissors).sample
  end
  
end
