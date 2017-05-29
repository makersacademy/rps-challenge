require_relative "../lib/player.rb"

describe Player do

  let(:player) { described_class.new(:name => "Guillermo", :choice => :rock) }

  describe "#name" do

    it "returns the name of the Player" do
      expect(player.name).to eq "Guillermo"
    end

  end

  describe "#choice" do

    it "returns the choice of the Player" do
      expect(player.choice).to eq :rock
    end

  end
end
