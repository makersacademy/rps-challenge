class Game

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

  def self.load_instance
    @game
  end

end
