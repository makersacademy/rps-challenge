class Score

  def initialize(players)
    @player1 = players[0]
    @player2 = players[1]
    @draw = false
    @winner = nil
    find_winner()
  end

  def winner?
    @winner 
  end
  
  def draw?
    @draw
  end

  private

  def find_winner
    if @player1.move == @player2.move
      @draw = true
    else
      @winner = score()
    end
  end

  def score
    move1 = @player1.move
    move2 = @player2.move
    if move1 == "R"
      if move2 == "S"
        return @player1
      else
        return @player2
      end
    elsif move1 == "P"
      if move2 == "R"
        return @player1
      else
        return @player2
      end
    elsif move1 == "S"
      if move2 == "P"
        return @player1
      else
        return @player2
      end
    end
  end

  # def tally
  #   moves = @players.map{ |player| player.move }
  #   move_count = {"R" => moves.count("R"), "P" => moves.count("P"), "S" => moves.count("S")}
  # end
end