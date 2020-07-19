require 'player'

describe Player do
    subject(:player) { Player.new(:firstname) }
    let(:move1) {double(:rock)}

    describe '#name' do
        it 'responds to name'do
            expect(player).to respond_to(:name)
            player.name
        end
    end

    describe '#move' do
        it 'responds to move' do
            expect(player).to respond_to(:move)
            player.move
        end
    end

    describe '#select_move' do
        it 'lets a player select a move' do
            expect{print player.select_move('move1')}.to output('move1').to_stdout
        end
    end
end
