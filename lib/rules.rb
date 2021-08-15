class Rules

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    return nil if @player1 == @player2
    
    p2_wins?[@player1] == @player2 ? :p2 : :p1
  end

  private 

  def p2_wins?
    {
      'Rock' => 'Paper',
      'Paper' => 'Scissors',
      'Scissors' => 'Rock'
    }
  end

end
