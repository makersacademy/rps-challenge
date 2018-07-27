# game class
class Game

  attr_reader :score
  attr_reader :names

  def self.instance
    @game
  end

  def self.create(player_class, player)
    @game = Game.new(player_class, player)
  end

  def initialize(player_class, player)
    @score = [0, 0] # score is made, index 0 = p1, 1 = p2
    @names = [player]
  end

end
