require 'computer'

describe Computer do
  let(:computer) {described_class.new}

  describe '#choice' do
    it 'returns random choice' do
      computer.choice
      expect(Computer::CHOICES).to include computer.choice
    end

  end

  describe 'result' do
    context 'play rock' do
      it 'win' do
        srand(2)
        p computer.choice
        expect(computer.result('scissors')).to eq :win
      end

      it 'loses' do
        srand(2)
        p computer.choice
        expect(computer.result('paper')).to eq :lose
      end
      # it 'draws' do
      #
      # end
    end
    # context 'play paper' do
    #   it 'win' do
    #
    #   end
    #
    #   it 'loses' do
    #   end
    #   it 'draws' do
    #
    #   end
    # end
    # context 'play scissors' do
    #   it 'win' do
    #
    #   end
    #
    #   it 'loses' do
    #   end
    #   it 'draws' do
    #
    #   end
    # end
  end
end
