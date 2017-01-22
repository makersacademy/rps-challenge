class Game

  attr_reader :selection, :player
  @game = nil

  def initialize(player)
    @player = player
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def selection
    ["Rock" , "Paper", "Scissors"].sample
  end

  def result
    


end
