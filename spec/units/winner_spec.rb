require 'winner'


describe Winner do
    subject(:winner) {Winner.new(:player1)}

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
end
