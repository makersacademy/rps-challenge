require 'player'

describe Player do
  subject(:player) { described_class.new }

  describe 'points' do
    it "initializes with a default amount of points" do
      expect(player.wins).to eq(Player::HANDICAP)
    end
  end
end
