require_relative 'player'

class Game
  class << self
    attr_reader :current_game

    def start(player1, player2 = Computer.new)
      @current_game = Game.new(player1, player2)
    end
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  attr_reader :player1, :player2, :result

  def compare
    if player1.move == player2.move
      @result = :draw
    elsif RULES[player1.move].include? player2.move
      @result = :win
    else
      @result = :lose
    end
  end

  RULES = {
    Rock: [:Scissors, :Lizard],
    Paper: [:Rock, :Spock],
    Scissors: [:Paper, :Lizard],
    Lizard: [:Paper, :Spock],
    Spock: [:Rock, :Scissors]
  }
end
