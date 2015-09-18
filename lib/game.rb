class Game

  attr_reader :rock_hash, :paper_hash, :scissors_hash

def initialize
  @rock_hash = {:paper => "YOU LOSE", :scissors => "YOU WIN", :rock => "DRAW"}
  @paper_hash = {:paper => "DRAW", :scissors => "YOU LOSE", :rock => "YOU WIN"}
  @scissors_hash = {:paper => "YOU WIN", :scissors => "DRAW", :rock => "YOU LOSE"}
  @computer = Computer.new
end

def result player
  comp_move = @computer.play
  if player.move == 'rock'
    result = @rock_hash[comp_move]
  elsif player.move == 'paper'
    result = @paper_hash[comp_move]
  else
    result = @scissors_hash[comp_move]
  end
  "Computer chose #{comp_move}. #{result}"
end

end
