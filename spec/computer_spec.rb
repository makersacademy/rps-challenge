require 'computer'

describe Computer do
  let(:computer) {described_class.new}

  describe '#choice' do
    it 'returns random choice' do
      computer.choice
      expect(Computer::CHOICES).to include computer.choice
    end
  end

  describe '#result' do
    context 'play rock' do
      before do
        srand(2)
        computer.choice
      end

      it 'win' do
        expect(computer.result('scissors')).to eq :win
      end

      it 'loses' do
        expect(computer.result('paper')).to eq :lose
      end

      it 'draws' do
        expect(computer.result('rock')).to eq :draw
      end
    end

    context 'play paper' do
      before do
        srand(1)
        computer.choice
      end

      it 'win' do
        expect(computer.result('rock')).to eq :win
      end

      it 'loses' do
        expect(computer.result('scissors')).to eq :lose
      end

      it 'draws' do
        expect(computer.result('paper')).to eq :draw
      end
    end

    context 'play scissors' do
      before do
        srand(3)
        computer.choice
      end

      it 'win' do
        expect(computer.result('paper')).to eq :win
      end

      it 'loses' do
        expect(computer.result('rock')).to eq :lose
      end

      it 'draws' do
        expect(computer.result('scissors')).to eq :draw
      end
    end
  end
end
