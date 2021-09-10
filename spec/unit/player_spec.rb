require 'player'

describe Player do
  subject(:player) { Player.new('Amanda') }

  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq 'Amanda'
    end
  end
end