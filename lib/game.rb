require_relative 'player'

class Game 
  attr_reader :players
  @game  

  def self.save_game(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.load_game
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end


end  