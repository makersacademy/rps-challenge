require_relative 'player'
require_relative 'bot'

class Game 

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    if WINNING_MOVES[player_1.choice.to_sym].include?(player_2.choice.to_sym)
      player_1.name
    else
      player_2.name
    end
  end

  def draw?
    player_1.choice == player_2.choice
  end

  WINNING_MOVES = {
    spock: [:rock, :scissors],
    lizard: [:paper, :spock],
    rock: [:scissors, :lizard],
    paper: [:spock, :rock],
    scissors: [:lizard, :paper],
  }
end
