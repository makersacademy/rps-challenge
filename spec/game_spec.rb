require 'game'

describe Game do 
    subject { Game.new("Rob") }
    it 'should be an instance of game' do
        expect(subject).to be_an_instance_of(Game)
    end

    it 'should have a player name attached to it' do 
        expect(subject.player_name).to eq "Rob"
    end

    it 'player should be able to pick a move and set it' do 
        subject.take_go("rock")
        expect(subject.player_move).to eq "rock"
    end
end