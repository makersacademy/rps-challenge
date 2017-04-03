class Game

  attr_reader :player1, :player2, :win_map

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @win_map = {rock: :paper, paper: :scissors, scissors: :rock}
  end

  def result
    if player1.choice == player2.choice
      return "It's a tie."
    elsif win_map[player2.choice] == player1.choice
      return "#{player2.name||player2}, you lucky opposum. Congratulations!"
    else
      return "#{player1.name} lost! Don't cry now!"
    end
  end
end
