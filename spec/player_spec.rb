require 'player'

describe Player do
  subject(:player) { Player.new('Kostas') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Kostas'
    end
  end
end