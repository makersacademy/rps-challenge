class Game

  attr_reader :player_1, :player_2
  
  def initialize (player_1, player_2 = Opponent.new)
  	@player_1 = player_1
  	@player_2 = player_2
  end

  def self.start (player_1)
  	@game = Game.new(player_1)
  end

  def self.instance
  	@game
  end

end