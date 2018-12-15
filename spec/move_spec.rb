require 'move'

describe Move do
  subject(:move) { described_class.new(rock) }
  let(:rock) { double :rock }

  describe '#choice' do
    it 'returns challenger move' do
      expect(move.choice).to eq(rock)
    end
  end

end
