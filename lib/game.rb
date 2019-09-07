class Game
  attr_reader :player1_name, :player2_name, :player1_move, :player2_move

  def self.the_game
    @game
  end

  def self.create(player1, player2 = 'Random Walk')
    @game = Game.new(player1, player2)
  end

  def initialize(player1, player2)
    @player1_name = player1
    @player2_name = player2

    @results_matrix = {
      ['Rock', 'Paper'] => 'Player 2 wins',
      ['Rock', 'Scissors'] => 'Player 1 wins',
      ['Paper', 'Rock'] => 'Player 1 wins',
      ['Paper', 'Scissors'] => 'Player 2 wins',
      ['Scissors', 'Rock'] => 'Player 2 wins',
      ['Scissors', 'Paper'] => 'Player 1 wins'
    }
  end

  def round(move1, move2 = random_move)
    @player1_move = move1
    @player2_move = move2
  end

  def result
    return 'Draw' if @player1_move == @player2_move
    @results_matrix[[@player1_move, @player2_move]]
  end

  private

  def random_move
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
