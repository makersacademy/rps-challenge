require 'player'

describe Player do
    subject (:jimbob) { Player.new('Jimbob')}

    describe '#name' do
        it 'returns the name' do
        expect(jimbob.name).to eq 'Jimbob'
        end 
    end 
end 