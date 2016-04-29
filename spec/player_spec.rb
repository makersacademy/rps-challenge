require 'player'

describe Player do
  subject(:player) {described_class.new(name:name)}
  let(:name) { double(:name)}

  describe '#name' do
    it 'returns its name' do
      expect(player.name).to eq name
    end
  end
end
