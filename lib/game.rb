class Game
  # attr_reader :player, :computer

  def initialize(player, computer)
    @players = [player, computer]
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end
end
