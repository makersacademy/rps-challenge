require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :options

  RULES = {
    paper: :rock,
    rock: :scissors,
    scissors: :paper
  }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result
    return "tie" if player_1.chosen_option == player_2.chosen_option
    RULES[player_1_option.to_sym] == player_2_option.to_sym ? player_1 : player_2
  end

  def computer_option
    player_2.random_option
  end

  def player_1_option
    player_1.chosen_option
  end

  def player_2_option
    player_2.chosen_option
  end

  def choose_player_1_option(option)
    player_1.choose_option(option)
  end

  def choose_player_2_option(option)
    player_2.choose_option(option)
  end
end
