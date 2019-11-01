require 'game'

describe Game do 
    subject { Game.new("Rob") }
    it 'should be an instance of game' do
        expect(subject).to be_an_instance_of(Game)
    end

    it 'should have a player name attached to it' do 
        expect(subject.player).to eq "Rob"
    end
end