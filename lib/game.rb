class RPS
attr_reader :player_1, :player_2

def initialize(player_1)
  @player_1 = player_1
  @player_2= player_2
end

def computer_move
  ['rock', 'paper', 'scissors'].sample
end

end