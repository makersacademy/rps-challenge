require 'player'

describe Player do
    subject (:jimbob) { Player.new('Jimbob','Rock')}

    describe '#name' do
        it 'returns the name' do
        expect(jimbob.name).to eq 'Jimbob'
        end 
    end 

    describe '#player_1_selection' do
        it 'returns the player selection' do
        expect(jimbob.player_1_selection).to eq 'Rock'
        end 

        
    end
end 