require 'weapons/scissors'

describe Scissors do
  let(:scissors) { described_class.new }

  describe '#fight' do
    context 'fighting against rock' do
      it 'loses' do
        expect(scissors.fight('Rock')).to eq :lose
      end
    end

    context 'fighting against paper' do
      it 'wins' do
        expect(scissors.fight('Paper')).to eq :win
      end
    end

    context 'fighting against scissors' do
      it 'draws' do
        expect(scissors.fight('Scissors')).to eq :draw
      end
    end
  end
end