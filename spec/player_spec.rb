require 'player'

describe Player do
  subject(:player) { described_class.new(:Trump, :Rock) }

  describe '#name' do
    it 'returns correct name' do
      expect(player.name).to eq :Trump
    end
  end

  describe '#choice' do
    it 'returns correct choice' do
      expect(player.choice).to eq :Rock
    end
  end
end
