require 'player'

describe Player do
  subject(:player) { Player.new('Adam') }

  describe "#initialize" do
    it 'returns the player name' do
      expect(player.name).to eq('Adam')
    end
  end
end
