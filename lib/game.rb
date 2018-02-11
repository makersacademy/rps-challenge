class Game

  attr_reader :player_1, :computer

  def initialize(player_1, computer)
    @player_1 = player_1
    @computer = computer
  end

  def self.instance
    @game
  end

  def self.create(player_1, computer)
    @game = Game.new(player_1, computer)
  end

end
