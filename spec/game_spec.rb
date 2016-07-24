require 'game'

describe Game do

  let(:player){double :player}
  subject { described_class.new(player) }

  describe '#result' do
    it 'returns draw if computer and player pick the same' do
      allow(subject.computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      expect(subject.result).to eq :draw
    end
  end
end
