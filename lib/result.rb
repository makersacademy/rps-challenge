class Result

def initialize(player_move, computer_move)
  @player_move = player_move.to_sym
  @computer_move = computer_move.to_sym
end

RULES = {
  :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
  :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
  :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
}

def judge
  if @player_move == RULES[@player_move][@computer_move]
    return :win
  elsif @computer_move == RULES[@player_move][@computer_move]
    return :lose
  else return :draw
end
end

end
