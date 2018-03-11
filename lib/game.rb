class Game
  attr_reader :player, :computer
  CHOICES = [:rock, :paper, :scissors]
  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end
end
