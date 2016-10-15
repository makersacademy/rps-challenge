class Game

  attr_reader :player1

  def initialize(player1)
    @player1 = player1
    @weapons = ["rock", "paper", "scissors"]
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def p1_choice
  end

  def ai_choice
    @weapons.sample
  end

end
