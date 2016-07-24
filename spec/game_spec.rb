require 'game'

describe Game do

  let(:player){double :player}
  subject { described_class.new(player) }


  describe '#initialize' do
    it 'creates a new instance of the Computer class' do

    end
  end

  describe '#result' do
    it 'returns draw if computer and player pick the same' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      allow(player).to receive(choice).and_return(:rock)
      expect(subject.result).to eq :draw
    end
  end
end
