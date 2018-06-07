require 'player'

describe Player do
  subject(:player) {described_class.new("jenny")}

  context "#initialize" do
    it "initializes with player name" do
      expect(player).to respond_to(:name)
    end
    it "initializes with player points" do
      expect(player).to respond_to(:points)
    end
  end

  context "#move" do
    it "playes the round" do
      expect(player.move).to eq "rock"
    end
  end
  context "#reduce_points" do
    it "reduces player points" do
      expect{player.increase_points}.to change{player.points}.by (+10)
    end
  end

end
