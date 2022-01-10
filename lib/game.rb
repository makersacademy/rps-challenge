require_relative 'player'

class Game 
  attr_reader :player_1, :players

  def initialize(player_class = Player.new(:name_1))
    @player_1 = player_class
    @players = {p1: player_1}
  end
  
  def player_name_1
    players[:p1].name
  end
end