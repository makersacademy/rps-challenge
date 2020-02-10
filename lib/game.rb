require_relative "player"
class Game
    attr_reader :player1, :player2
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def decide_winner(p1move, p2move)
        if p1move == p2move
            return "It was a draw"
        elsif p1move == "Rock" && p2move == "Scissors"
            return "#{@player1.name} wins"
        elsif p1move == "Rock" && p2move == "Paper"
            return "#{@player2.name} wins"
        elsif p1move == "Paper" && p2move == "Rock"
            return "#{@player1.name} wins"
        elsif p1move == "Paper" && p2move == "Scissors"
            return "#{@player2.name} wins"
        elsif p1move == "Scissors" && p2move == "Rock"
            return "#{@player2.name} wins"
        elsif p1move == "Scissors" && p2move == "Paper"
            return "#{@player1.name} wins"
        end
    end
end
        