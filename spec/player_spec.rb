require 'player'

describe Player do
  subject(:player) { described_class.new('Terry') }

  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq('Terry')
    end
  end

  describe '#set_move' do
    it 'store move' do
      player.set_move('paper')
      expect(player.move).to eq('paper')
    end
  end

end
