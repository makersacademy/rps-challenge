class Game

    attr_reader :player_move, :comp_move

    def initialize(player_move)
        @player_move = player_move
        @comp_move = ["Rock!", "Paper!", "Scissors!"].sample
    end


    def outcome
        if @player_move == @comp_move
          'Its a draw - no one wins'
        elsif (@player_move == 'Rock!' &&  @comp_move == 'Scissors!') || (@player_move == 'Paper!' &&  @comp_move == 'Rock!') || (@player_move == 'Scissors!' &&  @comp_move == 'Paper!')
          'Congratulations - you won!'
        else
          'Bad luck - the computer won!'
        end
    end

end