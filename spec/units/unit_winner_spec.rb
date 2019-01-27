require 'winner'
require 'player'

describe Winner do
    player1 = Player.new('thomas')
    player2 = Player.new('freddie')
    subject(:winner) {Winner.new(player1, player2)}

    describe '#player1' do
        it 'returns player 1' do
            expect(winner).to respond_to(:player1)
            winner.player1
        end
    end

    describe '#player2' do
        it 'returns player 2' do
            expect(winner).to respond_to(:player2)
            winner.player2
        end
    end


    describe '#determine_winner' do
        it 'determines the winner' do
          winner.player1.move = 'Rock'
          winner.player2.move = 'Paper'
          expect{print winner.determine_winner}.to output('Player 2').to_stdout
        end
    end
end
