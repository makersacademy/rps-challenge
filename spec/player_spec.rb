require 'rspec'
require './src/Player'

describe Player do
    subject {Player.new}

    it 'should allow the player to add a name' do
        subject.name = "Rhys"
        expect(subject.name).not_to eq nil
    end
end