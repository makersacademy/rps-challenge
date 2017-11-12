require './lib/player.rb'

class Game

  attr_reader :player_1, :player_2, :computer, :pt_player, :pt_computer

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @computer = Computer.new            # to delete
    @pt_player = 0  #to change
    @pt_computer = 0 # to change
  end

  def self.game(player_1, player_2)
    @game_class = Game.new(player_1, player_2)
  end

  def self.access_game
    @game_class
  end

  def increase_player_points  # to change
    @pt_player += 1
  end

  def increase_computer_points   # to change
    @pt_computer += 1
  end

end
