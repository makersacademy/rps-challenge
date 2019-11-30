require "player"

describe Player do
  let(:player) { Player.new("Andrea") }

  describe "#name" do
    it "should return the player's name" do
      expect(player.name).to eq "Andrea"
    end
  end

  describe "#choice" do
    it "should return the player's choice" do
      expect(player.choice).to eq nil
    end
  end

  describe "#update_choice" do
    it "should return the given choice" do
      expect(player.update_choice("Rock")).to eq "Rock"
    end
  end
end
