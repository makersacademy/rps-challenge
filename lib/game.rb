class Game
  attr_reader :player_1

  def initialize(player_1)
    @player_1 = player_1
    @rules = {
    :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
    :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
    }
    @options = [:rock,:paper,:scissors]
  end

  def play(p1, p2)
    @rules[p1][p2]
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
