class Game
  
  def initialize
    @players = []
  end

  def self.create_game
    @game = Game.new
  end

  def self.instance
    @game
  end

  def players
    @players
  end

  def add_player(player)
    @players << player
  end
  
end