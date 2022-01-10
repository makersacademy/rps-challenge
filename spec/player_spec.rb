require 'player'

describe Player do
  subject(:player)  { Player.new(:name) }

  describe "#name" do
    it 'returns player name' do
      expect(player.name).to eq :name
    end
  end
end