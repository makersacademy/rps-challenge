class Win
  attr_reader :winner

  def find_winner(current, opponent)
    return nil unless hands_drawn?(current, opponent)
    if current.hand == opponent.hand 
        @winner = "Tie!"       
      elsif current.wins_from.include? opponent.hand 
         current.wins
         @winner = "#{current.name} wins!" 
      else
         opponent.wins
        @winner = "#{opponent.name} wins!" 
      end 
    end

  private
  def hands_drawn?(current, opponent)
    current.hand && opponent.hand
  end
end
