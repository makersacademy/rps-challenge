class Game
  WEAPONS = { rock: [:scissors, :lizard],
            scissors: [:paper, :lizard],
            paper: [:rock, :spock],
            spock: [:scissors, :rock],
            lizard: [:spock, :paper]
  }

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.start(game)
    @game = game
  end

  def self.game
    @game
  end

  def result(weapon_1, weapon_2)
    return :tie if weapon_1 == weapon_2
    return :win if beats?(weapon_1, weapon_2)
    :lose
  end

  private

  def beats?(weapon_1, weapon_2)
    WEAPONS[weapon_1].include? weapon_2
  end
end
