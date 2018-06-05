class Game
  #unerstands the long game
  attr_reader :wins, :losses

  def self.instance
    @game
  end

  def self.create
    @game = Game.new
  end

  def initialize
    @wins = 0
    @losses = 0
  end

  def win
    @wins += 1
  end

  def lose
    @losses += 1
  end


end
