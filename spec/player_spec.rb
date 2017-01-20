require 'player'

describe Player do
    subject(:player_1) {described_class.new("Ben")}
    
    it "should save it's name" do
        expect(player_1.name).to eq "Ben"
    end
end