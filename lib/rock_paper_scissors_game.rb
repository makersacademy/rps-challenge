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
    @computer_weapon = random_weapon
  end

  private

  def random_weapon
    ['rock','paper','scissors'].sample
  end
end
