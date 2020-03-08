class Game
  attr_reader :player_1_score, :computer_score
  def initialize
    @player_1_score = 0
    @computer_score = 0
  end

  def rps_logic(player_1, computer)
    if player_1 == 'ROCK' && computer == 'SCISSORS'
      @player_1_score += 1
    elsif player_1 == 'SCISSORS' && computer == 'PAPER'
      @player_1_score += 1
    elsif player_1 == 'PAPER' && computer == 'ROCK'
      @player_1_score += 1
    elsif player_1 == computer
      return
    else
      @computer_score += 1
    end
  end

  def winner
    @player_1_score == 3 ? 'YOU WIN!' : 'YOU LOSE!'
  end
end