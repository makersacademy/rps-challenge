require './lib/player.rb'

class Game

  attr_reader :player_1, :player_2, :pt_player1, :pt_player2

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @pt_player1 = 0
    @pt_player2 = 0
  end

  def self.game(player_1, player_2)
    @game_class = Game.new(player_1, player_2)
  end

  def self.access_game
    @game_class
  end

  def increase_player1_points  
    @pt_player1 += 1
  end

  def increase_player2_points
    @pt_player2 += 1
  end

end
