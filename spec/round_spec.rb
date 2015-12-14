require 'round'

describe Round do
  subject(:round) {described_class.new(options)}
  let(:options) {{ name: "Test", shape: :rock, computer_shape: :rock}}

  describe '#name' do
    it 'returns player name' do
      expect(round.name).to eq('Test')
    end
  end
  describe '#shape' do
    it 'returns shape' do
      expect(round.shape).to eq(:rock)
    end
  end
  describe '#computer_shape' do
    it 'returns computer_shape' do
      expect(round.computer_shape).to eq(:rock)
    end
  end
end
