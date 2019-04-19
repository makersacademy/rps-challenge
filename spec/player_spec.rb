require 'player' 

describe Player do
  subject(:player) { described_class.new('player') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'player'
    end
  end
end