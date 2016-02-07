class Game

  attr_reader :winner, :player_1, :computer #:computer_choice

  def initialize(player_1, computer)
    @player_1 = player_1
    @computer = computer
    @winner = nil
  end


  def rps_logic(p1, p2)
    p1 = p1.to_sym
    # @computer_choice = p2
    winning_moves = {
      :Rock => :Scissors,
      :Scissors => :Paper,
      :Paper => :Rock
      }
    return @winner = 'Draw!' if p1 == p2
    winning_moves[p1] == p2 ? @winner = 'Player 1' : @winner = 'Player 2'
    # 'Player 1 won!' : 'Player 2 won!'
  end

  def result
    if @winner == 'Draw!'
      "It was a draw"
    elsif @winner == 'Player 1'
      "#{player_1.name} won!"
    else
      "#{player_1.name} lost!"
    # return 'It was a draw' if @winner == 'Draw!'
    # @winner == 'Player 1' ? "You won!" : "You lost!"
    end
  end
end
