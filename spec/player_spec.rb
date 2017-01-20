require 'player'

describe Player do
  subject(:player) { described_class.new("Player") }

  describe 'points' do
    it "initializes with a default amount of points" do
      expect(player.wins).to eq(Player::HANDICAP)
    end
  end

  describe 'name' do
    it "shows the player's name" do
      expect(player.name).to eq("Player")
    end
  end
end
