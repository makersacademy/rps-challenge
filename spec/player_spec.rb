require 'player'

describe Player do
  subject(:dave) { described_class.new('Dave') }
  let(:rock) { double :rock }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#weapon=' do
    it 'chooses weapon' do
      expect(dave.weapon=(rock)).to eq rock
    end
  end

  describe '#weapon' do
    it 'returns the chosen weapon' do
      dave.weapon=(rock)
      expect(dave.weapon).to eq rock
    end
  end
end