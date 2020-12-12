class Game

VALID_MOVES = ["rock", "paper", "scissors"]

attr_reader :player_name
attr_accessor :player_move, :computer_move

def initialize(name)
  @player_name = name
end

def update_player_move(move)
  @player_move = move
end

def update_computer_move(move)
  @computer_move = move
end

def generate_computer_move
  VALID_MOVES.sample
end

end
