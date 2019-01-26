class Game
  attr_reader :players, :player1, :player2, :player1_move

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @player1_move = nil
    @player2_move = nil
  end

  def make_move(player, move)
    @player1_move = player.make_move(move)
  end

  def computer_move      
    @player2_move = @player2.make_move
  end
  
end
