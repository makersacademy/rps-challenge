class Game
  attr_reader :current_turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def winner
    if player1.selection == player2.selection
      return "It's a draw!"
    end
    if winning_hand(player1.selection, player2.selection)
      return "#{player1.name} wins!"
    end
    return "#{player2.name} wins!"
  end

  def winning_hand(a,b)
    combos = {
      "Rock" => "Scissors",
      "Scissors" => "Paper",
      "Paper" => "Rock"
    }
    return true if combos[a] == b
    return false
  end

  def switch_turns
    @current_turn = @players.select { |player| player!= @current_turn }.first
  end

end
