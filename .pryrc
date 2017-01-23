# require './lib/game'
#
# game = Game.new "dylan"
#
# game.computer_choice
# game.player_choice "rock"


class Weapon
  attr_reader :type

  RULES = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:paper, :spock],
            spock: [:rock, :scissors] }

  def initialize(type)
    @type = type
  end

  def beats?(other)
    RULES[type][other.type]
  end
end

rock = Weapon.new(:rock)
rock.beats?(Weapon.new(:scissors))
