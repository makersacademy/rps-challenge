class Winner
  
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def self.run(p1, p2)
    Winner.new(p1, p2).declare_winner
  end

  def declare_winner
    p1 = @p1.user_choice
    p2 = @p2.user_choice
    compute_winner(p1,p2)
  end

  private
  def compute_winner(player1,player2)
    result = nil
    if player1 == player2
      result = "Draw"
    elsif player1 == "Rock" && player2 == "Scissors"
      result = @p1.name
    elsif player1 == "Scissors" && player2 == "Paper"
      result = @p1.name
    elsif player1 == "Paper" && player2 == "Rock"
      result = @p1.name
    else
      result = @p2.name
    end
    
    result
  end

end