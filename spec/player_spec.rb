require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { 'Toby' }
  describe '.name' do
    it 'returns the @name variable' do
      expect(player.name).to eq 'Toby'
    end
  end
end
