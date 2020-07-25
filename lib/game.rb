require_relative "player"

class Game
  attr_reader :current_turn

  def initialize(player_1, player_2)
    @choices = ["rock", "paper", "scissors"]
    @players = [player_1, player_2]
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def random_selection
    @choices.sample
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end
end
