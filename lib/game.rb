class Game

  attr_reader :player_one, :player_two

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
  end

  def results_message
    calculate_winner
    @winner == nil ? 'It was a draw!' : "#{@winner.name} is the winner!"
  end

  def calculate_winner
    p1_move = @player_one.move
    p2_move = @player_two.move
    if p1_move == 'rock' && p2_move == 'scissors'
      @winner = @player_one
    elsif p1_move == 'scissors' && p2_move == 'paper'
      @winner = @player_one
    elsif p1_move == 'paper' && p2_move == 'rock'
      @winner = @player_one
    elsif p1_move == 'scissors' && p2_move == 'rock'
      @winner = @player_two
    elsif p1_move == 'paper' && p2_move == 'scissors'
      @winner = @player_two
    elsif p1_move == 'rock' && p2_move == 'paper'
      @winner = @player_two
    end
  end

end
