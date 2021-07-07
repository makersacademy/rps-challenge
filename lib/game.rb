class Game
  attr_reader
  RULES = { scissors: :paper, paper: :rock, rock: :scissors }

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def play(weapon1, weapon2)

    if weapon1 == weapon2
      nil

    else
      RULES[weapon1] == weapon2 ? weapon1 : weapon2

    end
  end

  private
  def initialize

  end
end
