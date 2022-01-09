class Game
  attr_reader :player, :result

  def initialize(player)
    @moves = ['Rock', 'Paper', 'Scissors']
    @player = player
    @result = false
  end

  def computer_move
    @moves.sample
  end

  def outcome(move1, move2)
    if @moves.find_index(move1) == @moves.find_index(move2)
      @result = 'Draw!!'
    elsif (@moves.find_index(move1) + 1) % 3 == @moves.find_index(move2)
      @result = 'You lose!!'
    else
      @result = 'You win!!'
    end
  end
end
