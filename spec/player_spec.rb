require "player"

describe Player do
  subject(:player) { Player.new("John") }
  describe "#name" do
    it "has a name" do
      expect(player.name).to eq "John"
    end
  end

  describe "#save_move" do
    it "saves player's move" do
      subject.save_move("Rock")
      expect(subject.move).to eq "Rock"
    end
  end
end
