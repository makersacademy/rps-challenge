class Evaluator

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

# attr_reader :winner

  def evaluate
    if @player1.move == "Rock"
      @winner = @player1.name if @player2.move == "Scissors"
      @winner = @player2.name if @player2.move == "Paper"
      @winner = "It's a tie" if @player2.move == "Rock"
    elsif @player1.move == "Paper"
      @winner = @player1.name if @player2.move == "Rock"
      @winner = @player2.name if @player2.move == "Scissors"
      @winner = "It's a tie" if @player2.move == "Paper"
    else @player1.move == "Scissors"
      @winner = @player1.name if @player2.move == "Paper"
      @winner = @player2.name if @player2.move == "Rock"
      @winner = "It's a tie" if @player2.move == "Scissors"
    end
    @winner
  end

end
