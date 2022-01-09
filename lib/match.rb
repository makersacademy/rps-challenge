class Match
  attr_reader :player_1_move, :player_2_move
  RANDOM_MOVE = ['rock', 'scissors', 'paper'].sample

  def initialize(player_1_move)
    @player_1_move = player_1_move
    @player_2_move = RANDOM_MOVE
  end
end