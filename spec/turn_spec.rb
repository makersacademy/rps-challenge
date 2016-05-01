require 'turn'

describe Turn do
  subject(:turn) { described_class.new }

  describe 'result' do
    context 'one player mode' do
      it 'returns \'draw\' message when same choice' do
        allow(Kernel).to receive(:rand).and_return 0
        expect(turn.result('Scissors', nil)).to eq ['Scissors', 'Scissors']
      end

      it 'returns computer won message when computer chooses Paper' do
        allow(Kernel).to receive(:rand).and_return 1
        expect(turn.result('Rock', nil)).to eq ['Paper', 'Rock']
      end

      it 'returns player won message when computer chooses Rock' do
        allow(Kernel).to receive(:rand).and_return 2
        expect(turn.result('Paper', nil)).to eq ['Paper', 'Rock']
      end

      it 'returns computer won message when computer chooses Lizard' do
        allow(Kernel).to receive(:rand).and_return 3
        expect(turn.result('Spock', nil)).to eq ['Lizard', 'Spock']
      end

      it 'returns player won message when computer chooses Spock' do
        allow(Kernel).to receive(:rand).and_return 4
        expect(turn.result('Lizard', nil)).to eq ['Lizard', 'Spock']
      end
    end
  end
end
