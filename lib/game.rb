class Game

  attr_reader :player1, :player2

  def initialize(player1, player2 = nil)
    @player1 = player1
    @player2 = player2
  end

  def play
    case compare(@player1.move, @player2 ? @player2.move : random)
    when "Draw"
      "NOBODY (It was a draw)"
    when true
      @player1.name
    else 
      @player2 .nil? ? "COMPUTER" : @player2.name
    end
  end

  private

  def compare(input1, input2)

    return "Draw" if input1 == input2

    hash = {
      ROCK: "SCISSORS",
      SCISSORS: "PAPER",
      PAPER: "ROCK"
    }

    hash[input1.to_sym] == input2

  end

  def random
    ["ROCK", "PAPER", "SCISSORS"].sample
  end
end
