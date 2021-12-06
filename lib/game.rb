class Game
  attr_reader :players, :mode

  def initialize(player1, player2, mode)
    @players = [player1, player2]
    @mode = mode
  end

  def update_move(move)
    one_player_update(move) if mode == '1 player'
    two_player_update(move) if mode == '2 player'
  end

  def return_winner
    draw ? "It's a draw!" : player1_wins ? "#{@players[0].name} wins!" : "#{@players[1].name} wins!"
  end
    
  def generate_move
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

  private
  
  def one_player_update(move)
    @players[0].move(move)
    @players[1].move(generate_move)
  end

  def two_player_update(move)
    @players[0].move.nil? ? @players[0].move(move) : @players[1].move(move)
  end

  def draw
    @players[0].move == @players[1].move
  end

  def player1_wins
    (@players[0].move == "ROCK" && @players[1].move == "SCISSORS") || 
    (@players[0].move == "PAPER" && @players[1].move == "ROCK") || 
    (@players[0].move == "SCISSORS" && @players[1].move == "PAPER")
  end
end
