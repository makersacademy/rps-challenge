class Game
  @game = nil

  def initialize(player1)
    @players = [player1]
  end

  def self.instance #attr reader for game class instance variable- cant use attr_reader
    @game
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def player1
    @players[0]
  end

end
