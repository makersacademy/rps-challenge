require 'player'

describe Player do
  subject(:player) { described_class.new("Marketeer") }

  describe '#name' do
    it 'returns its name' do
      expect(player.name).to eq "Marketeer"
    end
  end

end
