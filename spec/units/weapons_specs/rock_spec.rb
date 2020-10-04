require 'weapons/rock'

describe Rock do
  let(:rock) { described_class.new }

  describe '#fight' do
    context 'fighting against rock' do
      it 'draws' do
        expect(rock.fight('Rock')).to eq :draw
      end
    end

    context 'fighting against paper' do
      it 'loses' do
        expect(rock.fight('Paper')).to eq :lose
      end
    end

    context 'fighting against scissors' do
      it 'wins' do
        expect(rock.fight('Scissors')).to eq :win
      end
    end
  end
end
