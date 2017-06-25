require "./lib/player.rb"

describe Player do

  subject(:player) { described_class.new("jini") }

  describe "#attributes" do
    it "has a name" do
      expect(player.name).to eq "jini"
    end
  end
end
