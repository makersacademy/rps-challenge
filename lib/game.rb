class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.start(game_instance)
    @current = game_instance
  end

  def self.read
    @current
  end

  def result
    calculate
  end

  private

  def calculate
    if (@player1.choice == "ROCK" && @player2.choice == "SCISSORS") || (@player1.choice == "PAPER" && @player2.choice == "ROCK") || (@player1.choice == "SCISSORS" && @player2.choice == "PAPER")
      1
    elsif (@player1.choice == "ROCK" && @player2.choice == "PAPER") || (@player1.choice == "PAPER" && @player2.choice == "SCISSORS") || (@player1.choice == "SCISSORS" && @player2.choice == "ROCK")
      -1
    else
      0
    end
  end

end
