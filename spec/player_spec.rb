require 'player'

describe Player do
  subject(:player_one) { described_class.new('Mark') }

  describe '#name' do
    it "returns the player's name" do
      expect(player_one.name).to eq('Mark')
    end
  end

end
