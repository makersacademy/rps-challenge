require 'game'

describe Game do
    describe '#selection' do
        it 'returns the selection entered by Player 1' do
        expect(subject.player_1_selection).to eq 'selection'
        end 
    end 
end 