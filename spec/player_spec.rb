require 'player'

describe Player do
    subject(:player_1)  { described_class.new("Ben") }
    let(:choice)        { :rock }
    
    it "should save it's name" do
        expect(player_1.name).to eq "Ben"
    end
    
    it "can save it's choice" do
        player_1.choose(choice)
        expect(player_1.choice).to eq choice
    end
end