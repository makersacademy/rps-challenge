class Game

  attr_reader :player1
  attr_accessor :p1choice

  def initialize(player1)
    @player1 = player1
    @weapons = ["rock", "paper", "scissors"]
    @p1choice = []
    @aichoice = []
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def ai_choice
    @aichoice << @weapons.sample
  end

end
