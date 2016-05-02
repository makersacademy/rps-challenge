class Game
  attr_reader :player_1, :result

  def initialize(player_1)
    @player_1 = player_1
    @result = result
    @rules = {
    :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
    :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
    }
    @options = [:rock,:paper,:scissors]
  end

  def play(p1)
    @player_1_choice = p1.to_s
    @result = @rules[p1][computer_draw]
    if @result == p1
      @outcome = "Player 1 wins"
    elsif @result == :draw
      @outcome = "It's a draw!"
    else
      @outcome = "The computer wins"
    end
  end

  def outcome
    @outcome
  end

  def computer_draw
    @computer_draw = @options.sample
    @computer_draw
  end

  def computer_choice
    @computer_draw
  end

  def player_1_choice
    @player_1_choice
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.game_in_play
    @game
  end
end
