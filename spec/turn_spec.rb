require 'turn'

describe Turn do
  subject(:turn) { described_class.new }

  describe 'result' do
    context 'two player mode' do
      it 'returns \'draw\' message when same choice' do
        expect(turn.result('rock', 'rock')).to eq "Draw!"
      end
    end

    context 'one player mode' do
      it 'returns \'draw\' message when same choice' do
        allow(Kernel).to receive(:rand).and_return 0
        expect(turn.result('scissors', nil)).to eq "Draw!"
      end

      it 'returns computer won message when computer chooses paper' do
        allow(Kernel).to receive(:rand).and_return 1
        expect(turn.result('rock', nil)).to eq "Player2 won! paper beats rock"
      end

      it 'returns player won message when computer chooses rock' do
        allow(Kernel).to receive(:rand).and_return 2
        expect(turn.result('paper', nil)).to eq "Player1 won! paper beats rock"
      end

      it 'returns computer won message when computer chooses lizard' do
        allow(Kernel).to receive(:rand).and_return 3
        expect(turn.result('spock', nil)).to eq "Player2 won! lizard beats spock"
      end

      it 'returns player won message when computer chooses spock' do
        allow(Kernel).to receive(:rand).and_return 4
        expect(turn.result('lizard', nil)).to eq "Player1 won! lizard beats spock"
      end
    end
  end
end
