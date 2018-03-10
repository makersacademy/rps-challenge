class Game
  attr_reader :player1
  def initialize(player1)
    @player1 = player1
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game ||= Game.new
  end


end
