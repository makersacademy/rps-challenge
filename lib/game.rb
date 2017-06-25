class Game
  attr_reader :player1, :player2, :weapon1, :weapon2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result(weapon1, weapon2)
    register_weapons(weapon1, weapon2)
    determine_outcome
  end

  private
  def register_weapons(weapon1, weapon2)
    @weapon1 = weapon1
    @weapon2 = weapon2
  end

  def determine_outcome
    case weapon1 <=> weapon2
    when 1 then :win
    when -1 then :lose
    else :draw
    end
  end
end
