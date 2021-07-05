require_relative 'player'
require_relative 'computer'

class Game

    attr_accessor :player1, :player2, :computer

    def initialize(player1, player2 = nil)
        @player1 = Player.new(player1)
        
        if player2 == nil
            @computer = Computer.new
            @player2 = nil
        else
            @player2 = Player.new(player2)
            @computer = nil
        end
           
    end


    def self.create(player1, player2 = nil)
        @game = Game.new(player1, player2)
    end

    def self.instance
        @game
    end

    def declare_winner(player1_move, opponent_move)

        case player1_move
            when "Rock"
                case opponent_move
                    when "Rock"
                        return draw
                    when "Paper"
                        return opponent_win
                    when "Scissors"
                        return player_win
                end
            when "Scissors"
                case opponent_move
                    when "Rock"
                        return opponent_win
                    when "Paper"
                        return player_win
                    when "Scissors"
                        return draw
                end
            when "Paper"
                case opponent_move
                    when "Rock"
                        return player_win
                    when "Paper"
                        return draw
                    when "Scissors"
                        return opponent_win
                end
        end
    end


    private

    def player_win
        @player1.score += 1
        return "#{@player1.name} wins!"
    end

    def opponent_win
        if @player2 == nil
            @computer.score += 1
            return "Computer wins!"
        else
            @player2.score += 1
            return "#{@player2.name} wins!"
        end
    end

    def draw
        return "Draw"
    end

end