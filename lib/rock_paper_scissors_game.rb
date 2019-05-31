class RockPaperScissorsGame
  attr_accessor :player, :computer_weapon

  def initialize(player)
    @player = player
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = RockPaperScissorsGame.new(player)
  end

  def play
    @computer_weapon = 'rock'
  end
end
