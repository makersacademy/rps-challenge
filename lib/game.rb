require_relative "./player"

class Game

  attr_reader :player1, :player2

  BEATS = { "Rock" => "Scissors",
            "Scissors" => "Paper",
            "Paper" => "Rock" }.freeze

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def decide_winner
    if @player1.move == @player2.move
      nil
    elsif BEATS[@player1.move] == @player2.move
      @player1
    else
      @player2
    end
  end

end
