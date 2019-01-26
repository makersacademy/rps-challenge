require 'winner'
require 'player'

describe Winner do
    player = Player.new('thomas')
    subject(:winner) {Winner.new(player)}

    describe '#player1' do
        it 'returns player 1' do
            expect(winner).to respond_to(:player1)
            winner.player1
        end
    end

    describe '#computer_move' do
        it 'returns computer move' do
            expect(winner).to respond_to(:computer_move)
            winner.computer_move
        end
    end

    describe '#determine_winner' do
        it 'determines the winner' do
          winner.player1.move = 'Rock'
          winner.computer_move = 'Paper'
          expect{print winner.determine_winner}.to output().to_stdout
        end
    end
end
