require 'rules'

class Game
  attr_reader :players

  def initialize(player, opponent, rules = Rules.new)
    @players = [player, opponent]
    @rules = rules
  end

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def play_a_round(player_choice)
    @players[0].choose_hand(player_choice)
    @players[1].choose_hand
  end

  def winner
    @rules.check_rules(@players)
  end
end
