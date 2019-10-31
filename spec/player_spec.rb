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

    it "should allow the player to decide whether they have won or not" do
        subject.MakeMove("Rock")
        expect(subject.CheckWon("Scissors")).to eq true
    end

    it "should allow the player to lose" do
        subject.MakeMove("Rock")
        expect(subject.CheckWon("Paper")).to eq false
    end

    it "should allow the player to draw" do
        subject.MakeMove("Scissors")
        expect(subject.CheckWon("Scissors")).to eq "Draw"
    end
end