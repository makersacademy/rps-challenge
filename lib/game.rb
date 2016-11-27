class Game
  @new_game = nil
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
    @player
  end

  def self.set(player, computer)
    @new_game = Game.new(player, computer)
  end

  def self.get
    @new_game
  end


end
