class Game
  attr_reader :player1_move, :player2_move

  def initialize(move1, move2 = ["Rock", "Paper", "Scissors", "Spock", "Lizard"])
    @player1_move = move1
    if move2.kind_of?(Array)
      @player2_move = move2.sample
    else
      @player2_move = move2
    end
  end

  def winner
    if @player1_move == @player2_move
      "Draw"
    else
      case @player1_move
      when "Rock"
        case @player2_move
        when "Scissors", "Lizard"
          "Player 1"
        when "Paper", "Spock"
          "Player 2"
        end
      when "Scissors"
        case @player2_move
        when "Paper", "Lizard"
          "Player 1"
        when "Rock", "Spock"
          "Player 2"
        end
      when "Paper"
        case @player2_move
        when "Rock", "Spock"
          "Player 1"
        when "Scissors", "Lizard"
          "Player 2"
        end
      when "Spock"
        case @player2_move
        when "Rock", "Scissors"
          "Player 1"
        when "Paper", "Lizard"
          "Player 2"
        end
      when "Lizard"
        case @player2_move
        when "Paper", "Spock"
          "Player 1"
        when "Scissors", "Rock"
          "Player 2"
        end
      end
    end
  end
end
