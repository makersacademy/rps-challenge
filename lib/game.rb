class Game

  attr_reader :player_1, :score, :computer_score

  def initialize(player_1)
    @player_1 = player_1
  end

  def shuffle
    ['rock', 'paper', 'scissors'].sample
  end
end
