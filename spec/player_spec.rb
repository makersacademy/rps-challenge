require './lib/player.rb'

describe Player do
    subject(:player) { described_class.new (name = "Player 1") }

    describe "initialize" do
        it "should return the players name" do
            expect(player.name).to eq "Player 1"
        end        
    end

end