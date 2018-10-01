require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player_1, :player_2

  RULES = {
    paper: :rock,
    rock: :scissors,
    scissors: :paper
  }

  def initialize(player_1, player_2 = Computer.new("The Machine"))
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def play(option)
    player_1_option(option)
    computer_option
  end

  def winner
    RULES[player_1.chosen_option.to_sym] == player_2.chosen_option.to_sym ? player_1 : player_2
  end

  def tie?
    player_1.chosen_option == player_2.chosen_option
  end

private

  def player_1_option(option)
    player_1.choose_option(option)
  end

  def computer_option
    player_2.random_option
  end

end
