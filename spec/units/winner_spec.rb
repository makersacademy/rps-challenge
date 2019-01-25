require 'winner'


describe Winner do
    subject(:game) {Winner.new(:player1)}

    describe '#player1' do
        it 'returns player 1' do
            expect(game).to respond_to(:player1)
            game.player1
        end
    end

    describe '#computer_move' do
        it 'returns computer move' do
            expect(game).to respond_to(:computer_move)
            game.computer_move
        end
    end
end
