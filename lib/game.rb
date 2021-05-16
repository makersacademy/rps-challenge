class Game

  attr_reader :player_pick, :opponent_pick

  def initialize(player_pick, opponent_pick=[:rock, :paper, :scissors].sample)
    @player_pick = player_pick
    @opponent_pick = opponent_pick
  end

  def result
    wins = { :scissors => :paper, :paper => :rock, :rock => :scissors }
    if @player_pick == @opponent_pick
      :draw
    elsif wins[@player_pick] == @opponent_pick
      :win
    else
      :lose
    end    
  end
end
