require 'player'
require 'game'

describe Player do
  subject(:player_one) { described_class.new('Mark') }

  describe '#name' do
    it "returns the player's name" do
      expect(player_one.name).to eq('Mark')
    end
  end

  describe '#weapon' do
    it "throws an error if selected weapon not valid" do
      expect { player_one.weapon = 'brick' }.to raise_error("Invalid weapon")
    end

    it "returns the player's weapon if valid" do
      player_one.weapon = :rock
      expect(player_one.weapon).to eq(:rock)
    end
  end

end
