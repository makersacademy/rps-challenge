require_relative '../lib/player.rb'

describe Player do
  subject(:ali) { Player.new("Ali") }

  describe "#name" do
    it "should return a name" do
      expect(ali.name).to eq "Ali"
    end
  end
end