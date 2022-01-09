class Game
  attr_reader :player

  def initialize(player)
    @moves = ['Rock', 'Paper', 'Scissors']
    @player = player
  end

  def computer_move
    @moves.sample
  end

  def outcome(move_1, move_2)
    if @moves.find_index(move_1) == @moves.find_index(move_2)
      'Draw!!'
    elsif (@moves.find_index(move_1) + 1) % 3 == @moves.find_index(move_2)
      'You lose!!'
    else
      'You win!!'
    end
  end
end
