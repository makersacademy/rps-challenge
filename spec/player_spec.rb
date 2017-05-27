require 'player'

describe Player do
  subject(:charlotte) { described_class.new ("Charlotte") }

  describe '#name' do
    it 'returns the player name' do
      expect(charlotte.name).to eq "Charlotte"
    end
  end
end
