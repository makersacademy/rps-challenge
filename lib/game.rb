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
    @computer = player2
  end

  attr_reader :player1, :computer, :result

  def compare(player_choice)
    if player_choice.to_sym == @computer.move
      @result = :draw
    elsif RULES[player_choice.to_sym].include? @computer.move
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
