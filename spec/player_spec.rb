require 'player'

describe Player do
    subject(:player) { Player.new('player') }

    it 'creates an instance of the player class' do
        expect(subject).to be_an_instance_of(Player)
    end

    it 'allows user to enter their name' do
        expect(subject.name).to eq 'player'    
    end
end