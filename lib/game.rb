class Game
  attr_reader :computer_move, :player ,:player_move

  def initialize(player)
    @player = player
  end

  def player_move
    player.players_move
  end

  def assign_computer_move
    @computer_move = ['rock','paper','scissors'].sample
  end

  def win?
    player_move == 'rock' && @computer_move == 'scissors' || player_move == 'scissors' && @computer_move == 'paper' || player_move == 'paper' && @computer_move == 'rock'
  end

  def draw?
    player_move == @computer_move
  end

  def lose?
    player_move == 'rock' && @computer_move == 'paper' || player_move == 'scissors' && @computer_move == 'rock' || player_move == 'paper' && @computer_move == 'scissors'
  end

end
