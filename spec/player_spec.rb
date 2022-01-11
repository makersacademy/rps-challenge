require 'player'
describe Player do
    let(:player) {Player.new('Robin')}

    describe '#name' do
        it 'returns the player name' do
            expect(player.name).to eq 'Robin'
        end
    end

    describe '#select_move' do 
        it 'returns player moving selection' do
            
            expect(player.select_move('Rock')).to eq 'Rock'
            expect(player.select_move('Paper')).to eq 'Paper'
            expect(player.select_move('Scissors')).to eq 'Scissors'

            expect(player.select_move('Rock')).not_to eq 'Paper'
        end
    end

            

end