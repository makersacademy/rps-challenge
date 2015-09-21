# require_relative 'player'

class Game

attr_reader :player_1_score
attr_reader :player_2_score

RULES = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }

COMPUTER_OPTIONS = [:rock, :paper, :scissors]

  def initialize
    @player_1_score = 0
    @player_2_score = 0
  end

  def round(player1, player2)
    if player1 == player2
      :draw
    elsif RULES[player1] == player2
      @player_1_score += 1
      :win
    else
      @player_2_score += 1
      :loss
    end
  end

  def computer_select
    COMPUTER_OPTIONS.sample
  end

  def score
    'Player ' + player_1_score.to_s + ', Computer ' + player_2_score.to_s
  end

end
