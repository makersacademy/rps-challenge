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
    if @player1.move == @player2.move
      "Draw"
    elsif @player1.move('rock') && @player2.move('scissors')
      "#{@player1.name} wins"
    elsif @player1.move('rock') && @player2.move('paper')
      "#{@player2.name} wins"
    elsif @player1.move('paper') && @player2.move('rock')
      "#{@player1.name} wins"
    elsif @player1.move('paper') && @player2.move('scissors')
      "#{@player2.name} wins"
    elsif @player1.move('scissors') && @player2.move('paper')
      "#{@player1.name} wins"
    elsif @player1.move('scissors') && @player2.move('rock')
      "#{@player2.name} wins"
    end
  end

end
