require 'player'

describe Player do
  subject(:claire) { Player.new('Claire') }
  subject(:chris) { Player.new('Chris') }

  describe ' #name' do
    it 'returns the player name' do
      expect(claire.name).to eq 'Claire'
    end
  end
end
