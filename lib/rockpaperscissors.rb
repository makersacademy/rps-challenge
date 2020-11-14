class RockPaperScissors
  DEFAULT_ROUNDS = 5
  CHOICES = [:rock, :paper, :scissors]
  COMBINATION_MAP = {
    :rock => { :rock => :draw, :paper => :loss, :scissors => :win },
    :paper => { :rock => :win, :paper => :draw, :scissors => :loss },
    :scissors => { :rock => :loss, :paper => :win, :scissors => :draw }
  }

  attr_reader :round

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @round = 0
  end

  def self.new_game(player1, player2)
    @game = RockPaperScissors.new(player1, player2)
  end

  def self.instance
    @game
  end

  def play_round(p1_choice, p2_choice)
    @round += 1
    result = COMBINATION_MAP[p1_choice][p2_choice]
    return result if result == :draw

    if result == :win
      @player1.score += 1
    else
      @player2.score += 1
    end
  
    result
  end
end