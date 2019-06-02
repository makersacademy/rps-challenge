class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def self.create(player_one, player_two)
    @game_instance = Game.new(player_one, player_two)
  end

  def self.instance
    @game_instance
  end
  
end