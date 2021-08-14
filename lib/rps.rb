class RPS

    attr_reader :player1, :player2, :Player1name, :Player2name

    def initialize(name1, name2)
        @Player1name = name1
        @Player2name = name2
    end

    def game
        @player1 = ['rock', 'paper', 'scissors'].sample
        @player2 = ['rock', 'paper', 'scissors'].sample
        if @player1 == 'rock' && @player2 == 'scissors' || @player1 == 'scissors' && @player2 == 'paper' || @player1 == 'paper' && @player2 == 'rock'
            puts "#{@Player1name} wins"
        elsif @player1 == @player2
            puts 'It\'s a draw!'
        else puts "#{@Player2name} wins"
        end
    end
end