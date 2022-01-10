class Game
  attr_reader :player, :result, :tally

  def initialize(player)
    @moves = ['Rock', 'Paper', 'Scissors']
    @player = player
    @tally = { player: 0, computer: 0, draws: 0 }
  end

  def computer_move
    @moves.sample
  end

  def outcome(move1, move2)
    if @moves.find_index(move1) == @moves.find_index(move2)
      @tally[:draws] += 1
      :draw
    elsif (@moves.find_index(move1) + 1) % 3 == @moves.find_index(move2)
      @tally[:computer] += 1
      :lose
    else
      @tally[:player] += 1
      :win
    end
  end
end
