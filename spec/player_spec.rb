require 'player'

describe Player do
  subject(:player) { described_class.new("Robert") }

  context "on initialization" do

    it "has a name" do
      expect(player.name).to eq "Robert"
    end

  end


end
