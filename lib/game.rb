require_relative 'player'
require_relative 'bot'

class Game 

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  WINNING_MOVES = {
    spock: [:rock, :scissors],
    lizard: [:paper, :spock],
    rock: [:scissors, :lizard],
    paper: [:spock, :rock],
    scissors: [:lizard, :paper],
  }
end
