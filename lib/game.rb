class Game
  attr_reader :computer_move

  DEFAULT_OPTIONS = [:rock , :paper, :scissors]

  def initialize(move, winner_class:)
    @player_move = move
    @winner_class = winner_class
    @computer_move = random_computer_move
  end

  def return_message
    winner = winner(@computer_move,@player_move)
    if winner == 'player_1'
      'You lose!'
    elsif winner == 'player_2'
      'You win!'
    else
      "It's a draw!"
    end
  end

  private

  def random_computer_move
    DEFAULT_OPTIONS.sample
  end

  def winner(move_1,move_2)
    @winner_class.new(move_1, move_2).winner
  end

end