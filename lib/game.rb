class Game
    # RULES = { rock: :scissors,
    #     paper: :rock,
    #     scissors: :paper }
attr_accessor :user_move

    OPTIONS = [ :rock, :paper, :scissors]

    def initialize(user_move)
        @user_move = user_move
        @computer_move = computer_move
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