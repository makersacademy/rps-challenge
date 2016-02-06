
require_relative('player')
require_relative('computer')

class Game

  MOVES = [:rock, :paper, :scissors]
  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def result
    if (player_one.move).to_sym == (player_two.move).to_sym
      :draw
    else
      RULES[(player_one.move).to_sym].include?(player_two.move) ? :win : :lose
    end
  end

end
