class Game
  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def self.create(player_one, player_two)
    @game = self.new(player_one, player_two)
  end

  def self.instance
    @game
  end

end
