class Game

  attr_reader :player_1, :score, :computer_score

  def initialize(player_1)
    @player_1 = player_1
    @score = 0
    @computer_score = 0
  end

  def win
    @score += 1
  end

  def computer_win
    @computer_score += 1
  end

  def shuffle
    ['rock', 'paper', 'scissors'].sample
  end
end
