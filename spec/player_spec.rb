require 'player'

describe Player do
    
    subject(:player) {described_class.new("Bob")}

    it 'initialises with a score of 0' do
        expect(player.score).to eq 0
    end

    it 'initialises with a name' do
        expect(player.name).to eq "Bob"
    end
end