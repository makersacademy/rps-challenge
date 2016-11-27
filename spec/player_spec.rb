require 'player'

describe Player do

  subject(:player) {described_class.new("Russell", :rock)}

  describe "initialization" do
    it "has a name" do
      expect(player.name).to eq 'Russell'
    end

    it "stores a choice" do
      expect(player.choice).to eq :rock
    end

  end



end
