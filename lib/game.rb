require_relative 'player'

class Game

  attr_reader :player, :game, :comp, :selection, :result

  def initialize(player)
    @player = player
  end

  WEAPONS = [:rock, :paper, :scissors]

  def comp_select
    @comp = WEAPONS.sample
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def rock
    @selection = WEAPONS[0]
  end

  def paper
    @selection = WEAPONS[1]
  end

  def scissors
    @selection = WEAPONS[2]
  end

  RULES = { rock: {rock: :draw, paper: :lose, scissors: :win},
  paper: {rock: :win, paper: :draw, scissors: :lose},
  scissors: {rock: :lose, paper: :win, scissors: :draw}
  }


  def compare
    @result = RULES[@selection][@comp]
  end

end
