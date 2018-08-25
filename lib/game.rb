class Game

  attr_reader :player_move

  def initialize (player_move)
    @player_move = player_move
    # @computer_move = ['ROCK','PAPER','SCISSORS'].sample
  end

end
