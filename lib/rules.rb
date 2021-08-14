class Rules

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    return nil if @player1 == @player2
    return :p2 if @player1 == "Rock" && @player2 == "Paper"
    return :p2 if @player1 == "Paper" && @player2 == "Scissors"
    return :p2 if @player1 == "Scissors" && @player2 == "Rock"
    
    :p1
  end

end
