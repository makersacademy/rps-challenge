require 'player'

describe Player do
  subject(:lucy) {Player.new('Lucy')}

  describe "#name" do
    it "returns player name" do
      expect(lucy.name).to eq 'Lucy'
    end
  end

  describe "#points" do
    it "shows how many points the player has won" do
      expect(lucy.points).to eq 0
    end

  end

end
