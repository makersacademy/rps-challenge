require 'rspec'
require './src/Player'

describe Player do
    subject {Player.new("Rhys")}

    it 'should allow the player to add a name' do
        expect(subject.name).not_to eq nil
    end

    it 'should allow the player to make a move' do
        subject.MakeMove("Rock")
        expect(subject.move).not_to eq nil
    end
end