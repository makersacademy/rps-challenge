class RockPaperScissorsGame
  attr_accessor :player

  def initialize(player)
    @player = player
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = RockPaperScissorsGame.new(player)
  end
end
