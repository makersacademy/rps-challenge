require 'weapons/paper'

describe Paper do
  let(:paper) { described_class.new }

  describe '#fight' do
    context 'fighting against rock' do
      it 'wins' do
        expect(paper.fight('Rock')).to eq :win
      end
    end

    context 'fighting against paper' do
      it 'draws' do
        expect(paper.fight('Paper')).to eq :draw
      end
    end

    context 'fighting against scissors' do
      it 'loses' do
        expect(paper.fight('Scissors')).to eq :lose
      end
    end
  end
end