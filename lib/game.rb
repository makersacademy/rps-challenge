class Game
  attr_reader :player_1, :computer, :result

  def initialize(player_1)
    @player_1 = player_1
    @computer = computer
    @result = result
    @rules = {
    :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
    :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
    }
    @options = [:rock,:paper,:scissors]
  end

  def play(p1)
    @computer = @options.shuffle.sample
    @result = @rules[p1][computer_draw]
    if @result == p1
      "Player 1 wins"
    elsif @result == :draw
      "Draw!"
    else
      "Computer wins"
    end
  end

  def computer_draw
    @options.shuffle.sample
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.game_in_play
    @game
  end
end
