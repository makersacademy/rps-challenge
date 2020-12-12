class Game

attr_reader :player_name
attr_accessor :player_move

def initialize(name)
  @player_name = name
end

def update_player_move(move)
  @player_move = move
end

end
