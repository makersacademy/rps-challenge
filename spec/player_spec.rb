require 'player'

describe Player do
  subject(:calum) { Player.new("Calum") }

  describe "#name" do
    it "returns the player's name" do
      expect(calum.name).to eq "Calum"
    end
  end

end
