class Comparison

attr_reader :user_move, :comp_move
  THERULES = {
    :rock => {:rock => :draw, :paper => :paper, :scissors => :rock},
    :paper => {:rock => :paper, :paper => :draw, :scissors => :scissors},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
    }

  def initialize(user_move, comp_move)
    @user_move = user_move.downcase
    @comp_move = comp_move.downcase
  end

  def playing
    THERULES.select {}
  end
end
