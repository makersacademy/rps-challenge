
class Game

  attr_reader :player
  
  def initialize(player_name)
    @player = Player.new(player_name)
  end

  def rock
  end

  def paper
  end

  def scissors
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end


end
