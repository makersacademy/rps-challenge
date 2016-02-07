class Game

  attr_reader :winner, :player_1, :player_2 #:computer_choice

  WINNING_MOVES = {
    :Rock => :Scissors,
    :Scissors => :Paper,
    :Paper => :Rock
    }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end


  # def rps_logic(p1, p2)
  #   # 'Player 1 won!' : 'Player 2 won!'
  # end

  def result(p1,p2)
    p1 = p1.to_sym
    p2 = p2.to_sym
    return @winner = :Draw if p1 == p2
    WINNING_MOVES[p1] == p2 ? @winner = player_1.name : @winner = player_2.name

    # if @winner == 'Draw!'
    #   "It was a draw"
    # elsif @winner == 'Player 1'
    #   "#{player_1.name} won!"
    # else
    #   "#{player_2.name} won!"
    # return 'It was a draw' if @winner == 'Draw!'
    # @winner == 'Player 1' ? "You won!" : "You lost!"

  end
end
