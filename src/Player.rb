
class Player
    attr_accessor :name
    attr_reader :move
    def initialize(name)
        @move = nil
        @name = name
    end
    def MakeMove(move)
        @move = move
    end

    def CheckWon(otherMove)
        case @move
            when "Rock"
                if otherMove == "Paper"
                    return false
                elsif otherMove == "Scissors"
                    return true
                else
                    return "Draw"
                end
            when "Paper"
                if otherMove == "Scissors"
                    return false
                elsif otherMove == "Rock"
                    return true
                else
                    return "Draw"
                end
            when "Scissors"
                if otherMove == "Rock"
                    return false
                elsif otherMove == "Paper"
                    return true
                else
                    return "Draw"
                end
        end
    end
end