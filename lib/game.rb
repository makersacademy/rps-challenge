class Game
  attr_reader :result

  def play(player1, player2)
    @result = calculate_winner(player1, player2)
  end

  private

  def calculate_winner(player1, player2)
    # "#{player1.name} wins!"
    if player1.move == player2.move
      return "It's a draw!"       
    elsif player1.move == :rock
      if player2.move == :paper
        return "#{player2.name} wins!"
      elsif player2.move == :scissors
        return"#{player1.name} wins!"
      end
    elsif player1.move == :paper
     if player2.move == :rock
      return "#{player2.name} wins!"
     elsif player2.move == :scissors
      return"#{player1.name} wins!"
     end
   else
    if player2.move == :rock
      return"#{player2.name} wins!"
    elsif player2.move == :paper
      return"#{player1.name} wins!"
    end
   end
  end
end