class Result
  
  def initialize
    @win_map = {
      'scissors' => 'paper',
      'paper' => 'rock', 
      'rock' => 'scissors'
    }
  end

  def winner(p1, p2)
    if p1 == p2
      "It's a draw!"
    elsif @win_map[p1] == p2
      "You won!"
    else
      "I won!"
    end
  end

end
