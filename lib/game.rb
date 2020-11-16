

class Game

  attr_accessor :computer_score, :player_won, :player_score

    def initialize
      @computer_score = 0
      @player_score = 0
    end

    def computer_move
      move = ["rock", "paper", "scissors"].sample
      return move
    end

    def winner(p1move, p2move)

      if p1move == p2move
        @player_won = nil
      end
      if p1move == "scissors" && p2move == "rock"
        @player_won = false
      elsif p1move == "scissors" && p2move == "paper"
        @player_won = true
      elsif p1move == "paper" && p2move == "rock"
        @player_won = true
      elsif p1move == "paper" && p2move == "scissors"
        @player_won = false
      elsif p1move == "rock" && p2move == "paper"
        @player_won = false
      elsif p1move == "rock" && p2move == "scissors"
        @player_won = true
      end
      declare_winner
    end

    def declare_winner
      if @player_won == true
        @player_score = @player_score + 1
        return "You won!"
      elsif @player_won == nil
        return "Tie!"
      elsif @player_won == false
        @computer_score = @computer_score + 1
        return "You lost!"
      end
    end



end
