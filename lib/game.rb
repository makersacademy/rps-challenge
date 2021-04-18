require_relative 'player'
require_relative 'weapons'

class Game 
  attr_reader :players
  @game = nil

  def self.save_game(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.load_game
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @weapon = Weapon.new
  end

  def winner
    "#{winner_name} wins!"
  end  

  private
  def winner_name
    @weapon.results[@players[0].weapon.to_sym][@players[1].weapon.to_sym] ? @players[0].name : @players[1].name
  end
end  