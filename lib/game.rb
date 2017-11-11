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
    if (@player1.choice == "rock" && @player2.choice == "scissors") || (@player1.choice == "paper" && @player2.choice == "rock") || (@player1.choice == "scissors" && @player2.choice == "paper")
      1
    elsif (@player1.choice == "rock" && @player2.choice == "paper") || (@player1.choice == "paper" && @player2.choice == "scissors") || (@player1.choice == "scissors" && @player2.choice == "rock")
      -1
    else
      0
    end
  end

end
