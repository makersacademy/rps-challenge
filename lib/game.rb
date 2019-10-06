class Game

  attr_reader :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def winner
      win_condition
  end

  private

  def win_condition
    if @player1.final_move == @player2.final_move
      "Draw"
    elsif @player1.final_move == 'rock' && @player2.final_move == 'scissors'
      "#{@player1.name} wins"
    elsif @player1.final_move == 'rock' && @player2.final_move == 'paper'
      "#{@player2.name} wins"
    elsif @player1.final_move == 'paper' && @player2.final_move == 'rock'
      "#{@player1.name} wins"
    elsif @player1.final_move == 'paper' && @player2.final_move == 'scissors'
      "#{@player2.name} wins"
    elsif @player1.final_move == 'scissors' && @player2.final_move == 'paper'
      "#{@player1.name} wins"
    elsif @player1.final_move == 'scissors' && @player2.final_move == 'rock'
      "#{@player2.name} wins"
    end
  end

end
