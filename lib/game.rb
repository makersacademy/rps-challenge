class Game
  attr_reader :player, :computer

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def random_choice
    ["Rock", "Paper", "Scissors"].sample
  end
end
