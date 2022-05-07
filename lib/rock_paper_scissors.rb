require_relative 'player'

class RPS

  attr_reader :winner_or_draw, :player1, :player2

  def initialize(player1 = Player.new("Chris"), player2 = Player.new("Coding"))
    @winner_or_draw = nil
    @player1 = player1
    @player2 = player2
  end

  def check_winner_or_draw
    win_matrix = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper'}
    if @player1.move == @player2.move
      @winner_or_draw = :draw
    elsif win_matrix[@player1.move] == @player2.move
      @winner_or_draw = :player1
    else
      @winner_or_draw = :player2
    end
  end

  def random_choice
    @player2.pick(randomise)
  end

  private

  def randomise 
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
