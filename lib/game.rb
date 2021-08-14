class Game
  attr_reader :winner

  DEFAULT_OPTIONS = [:rock , :paper, :scissors]

  def initialize(move, winner_class:)
    @player_move = move
    @options = DEFAULT_OPTIONS
  end

  def return_message
    winner = winner(computer_move,@player_move)
    if winner == 'player_1'
      'You lose!'
    elsif winner == 'player_2'
      'You win!'
    else
      "It's a draw!"
    end
  end

  private

  def computer_move
    @computer_move = @options.sample
  end

  def winner(move_1,move_2)
    @winner_class.new(move_1, move_2)
  end

end