require 'turn'

describe Turn do

  context 'if player1 winner' do

    subject(:turn) { described_class.new('Paper','Rock') }
    describe '#winner' do
      it 'returns player1' do
        expect(turn.winner).to eq :player1
      end
    end

    describe '#message' do
      it 'returns message you won' do
        turn.winner
        expect(turn.message).to eq 'You won!'
      end
    end

  end

  context 'if player2 winner' do

    subject(:turn) { described_class.new('Scissors','Rock') }
    describe '#winner' do
      it 'returns player2' do
        expect(turn.winner).to eq :player2
      end
    end

    describe '#message' do
      it 'returns message you lost' do
        turn.winner
        expect(turn.message).to eq 'You lost!'
      end
    end

  end

  context 'if tie' do

    subject(:turn) { described_class.new('Rock','Rock') }
    describe '#winner' do
      it 'returns nil' do
        expect(turn.winner).to eq nil
      end
    end

    describe '#message' do
      it 'returns message no winners' do
        turn.winner
        expect(turn.message).to eq 'No winners!'
      end
    end

  end

end
