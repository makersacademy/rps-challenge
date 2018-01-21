class Game

  attr_reader :player1, :player2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def moves(player1_move, player2_move)
    winning_moves = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
    return "It's a draw!" if (player1_move == player2_move)
    return "#{player1.name} wins!" if winning_moves[player1_move] == player2_move
    return "#{player2.name} wins!"
  end

end
