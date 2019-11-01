class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def results (player_1_move, player_2_move)
    case [player_1_move, player_2_move]
      when ['Rock', 'Rock'], ['Paper', 'Paper'], ['Scissors', 'Scissors']
        return "It's a draw"
      when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
        return "Player 1 wins"
      when ['Paper', 'Scissors'], ['Rock', 'Paper'], ['Scissors', 'Rock']
        return "Player 2 wins"
    end
  end
end