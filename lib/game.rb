require_relative 'player'
require_relative 'computer'

class Game

    attr_accessor :player1, :computer

    def initialize(player1)
        @player1 = Player.new(player1)
        @computer = Computer.new
    end


    def self.create(player1)
        @game = Game.new(player1)
    end

    def self.instance
        @game
    end

    def declare_winner(player1_move, computer_move)

        case player1_move
            when "Rock"
                case computer_move
                    when "Rock"
                        return draw
                    when "Paper"
                        return computer_win
                    when "Scissors"
                        return player_win
                end
            when "Scissors"
                case computer_move
                    when "Rock"
                        return computer_win
                    when "Paper"
                        return player_win
                    when "Scissors"
                        return draw
                end
            when "Paper"
                case computer_move
                    when "Rock"
                        return player_win
                    when "Paper"
                        return draw
                    when "Scissors"
                        return computer_win
                end
        end
    end


    private

    def player_win
        @player1.score += 1
        return "#{@player1.name} wins!"
    end

    def computer_win
        @computer.score += 1
        return "Computer wins!"
    end

    def draw
        return "Draw"
    end

end