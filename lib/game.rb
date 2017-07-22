class Game

  attr_reader :player_1, :player_2, :result

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @result
  end

end
