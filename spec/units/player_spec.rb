require 'player'

describe Player do

  let(:name) { double(:name) }
  subject(:player) { described_class.new(name) }

  describe '#name' do
    it 'returns player name (or computer)' do
      expect(player.name).to eq name
    end
  end

  describe '#chooses' do
    it 'stores the user choice' do
      expect(player).to respond_to(:selection)
    end
  end

end
