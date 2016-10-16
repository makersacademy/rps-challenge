require 'player'

describe Player do
  let(:player) { described_class.new('Hilary') }

  describe '#initialize' do
    it 'is given a name' do
      expect(player.name).to eq 'Hilary'
    end
  end
end
