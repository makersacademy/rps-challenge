require 'player'

describe Player do
  subject(:player) { described_class.new("Ed") }

  describe "#initialize" do
    it "should return player_1 name as Ed" do
      expect(player.name).to eq("Ed")
    end
  end

  describe "#move" do
    it 'stores player move' do
      player.move=("rock")
      expect(player.move).to eq :rock
    end
  end
end