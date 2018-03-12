class Game
  attr_reader :player, :computer
  CHOICES = [:rock, :paper, :scissors]
  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end
end
