require 'player'

describe Player do

  subject(:player) {described_class.new("Russell")}

  describe "initialization" do
    it "has a name" do
      expect(player.name).to eq 'Russell'
    end
  end

  describe "choice" do
    it "stores a choice" do
      player.set_choice(:rock)
      expect(player.choice).to eq :rock
    end
  end



end
