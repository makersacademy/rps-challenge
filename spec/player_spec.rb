require 'player'

describe Player do
  describe "#print_name" do
    subject(:player){Player.new("Vale")}
    it "shows player name" do
      expect(player.name).to eq("Vale")
    end
  end
end
