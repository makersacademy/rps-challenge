require_relative 'player'

class Game
  class << self
    attr_reader :current_game

    def start(player)
      @current_game = Game.new(player)
    end
  end

  def initialize(player)
    @player = player
    @computer_choice = RULES.keys.sample.to_sym
  end

  attr_reader :player, :result

  def compare(player_choice)
    if player_choice.to_sym == @computer_choice
      @result = :draw
    elsif RULES[player_choice.to_sym] == @computer_choice
      @result = :win
    else
      @result = :lose
    end
  end

  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }
end
