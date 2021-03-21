class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    move_hierarchy = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
    }

    if @player1.move == @player2.move
      return nil
    elsif move_hierarchy[@player1.move] == @player2.move
      return @player1      
    else
      return @player2
    end
  end

end
