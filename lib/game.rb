class Game
attr_reader :user_move, :computer_move
attr_accessor :user_move, :computer_move

    OPTIONS = [ :ROCK, :PAPER, :SCISSORS]

    def initialize(user_move)
        @user_move = user_move
        @computer_move = computer_move
    end

    def computer_move
        OPTIONS.sample
    end

    def winner
    unless (@user_move == :SCISSORS && @computer_move == :ROCK) || (@user_move == :ROCK && @computer_move == :PAPER) || (@user_move == :PAPER && @computer_move == :SCISSORS)
        cpu_win_message
    else
        user_win_message
     end
    end

    private
    
    def user_win_message
        "You win, WOOHOO!!"
    end

    def draw_message
        "It's a draw!"
    end

    def cpu_win_message
        "Unlucky champ... the machine has got the better of you."
        
    end
end