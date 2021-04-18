class Game
  attr_reader :player, :computer

  def initialize(player)
    @player = player
    @computer = Player.new('Computer')
  end
  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end

  def make_random_choice
    ['rock', 'paper', 'scissors'].sample
  end
end
