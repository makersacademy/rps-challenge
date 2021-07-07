require_relative "player"

class Game
  attr_reader :current_turn

  def initialize(player_1, player_2 = nil)
    @choices = ["rock", "paper", "scissors"]
    @players = [@player_1 = player_1, @player_2 = player_2]
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

  def self.instance
    @game
  end

  def self.create(player_1)
    #@player_2 = Player.new(player_2)
    @game = Game.new(player_1)
  end

  def create_computer(computer)
    @player_2 = Player.new(computer)
  end

  def create_player_2(player)
    @player_2 = Player.new(player)
  end
end
