require './lib/player.rb'

class Game

  attr_reader :player, :computer, :pt_player, :pt_computer

  def initialize(player_name)
    @player = Player.new(player_name)
    @computer = Computer.new
    @pt_player = 0
    @pt_computer = 0
  end

  def self.game(player_name)
    @game_class = Game.new(player_name)
  end

  def self.access_game
    @game_class
  end

  def increase_player_points
    @pt_player += 1
  end

  def increase_computer_points
    @pt_computer += 1
  end
end
