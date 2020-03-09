module WinnerHelper
    def declare_winner(_game)
        @player1 = @game.player1
        @game.player2 != nil ? @player2 = @game.player2 : @computer = @game.computer
        

        if @player1.move != nil && @game.player2 == nil
            @computer_move =  @computer.move
            @winner = @game.declare_winner(@player1.move, @computer_move)
        elsif @player1.move != nil && @player2.move != nil
            @winner = @game.declare_winner(@player1.move, @player2.move)
        end
    end
end