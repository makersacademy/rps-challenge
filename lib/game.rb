class Game
    RULES = { rock: :scissors,
        paper: :rock,
        scissors: :paper }

    OPTIONS = [ :rock, :paper, :scissors]

    def user_move
        OPTIONS

    end

    def computer_move
        OPTIONS.sample
    end

    def user_win?
        if user_move == :rock && computer_move == :scissors
            true
        elsif user_move == :paper && computer_move == :rock
            true
        else
            false
        end
    end
end