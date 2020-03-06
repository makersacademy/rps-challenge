require 'player'

describe Player do
    
    subject(:player) {described_class.new("Bob")}

    it 'initialises with a name' do
        expect(player.name).to eq "Bob"
    end
end