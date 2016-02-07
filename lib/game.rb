class Game

  attr_reader :winner, :player_1, :player_2 #:computer_choice

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end


  def rps_logic(p1, p2)
    p1 = p1.to_sym
    p2 = p2.to_sym
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
      "#{player_2.name} won!"
    # return 'It was a draw' if @winner == 'Draw!'
    # @winner == 'Player 1' ? "You won!" : "You lost!"
    end
  end
end
