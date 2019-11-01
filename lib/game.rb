

class Game

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end


  def check_winner(player1,player2)

    player1_move = player1.move
    player2_move = player2.move

    case player1_move
      when "Rock"
        return "#{player1.name} wins" if player2_move == "Scissors"
        return "#{player2.name} wins" if player2_move == "Paper"
        return "Draw" if player2_move == "Rock"
      when "Scissors"
        return "#{player1.name} wins" if player2_move == "Paper"
        return "#{player2.name} wins" if player2_move == "Rock"
        return "Draw" if player2_move == "Scissors"
      when "Paper"
        return "#{player1.name} wins" if player2_move == "Rock"
        return "#{player2.name} wins" if player2_move == "Scissors"
        return "Draw" if player2_move == "Paper"
    end
  end
end