require 'game'

describe Game do

  let(:player){double :player}
  let(:computer){double :computer}
  subject { described_class.new(player, computer) }

  describe '#result' do
    it 'returns draw if computer and player pick the same' do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      expect(subject.result).to eq :draw
    end
  end
end
