require 'game'

describe Game do

  describe '#result' do

    context 'when player chooses rock' do

      it 'returns "draw" if computer also chooses rock' do
        expect(subject.result('Rock', 'Rock')).to eq 'draw'
      end

      it 'returns "win" if computer chooses scissors' do
        expect(subject.result('Rock', 'Scissors')).to eq 'win'
      end

      it 'returns "lose" if computer chooses paper' do
        expect(subject.result('Rock', 'Paper')).to eq 'lose'
      end

    end

    context 'when player chooses paper' do

      it 'returns "draw" if computer also chooses paper' do
        expect(subject.result('Paper', 'Paper')).to eq 'draw'
      end

      it 'returns "win" if computer chooses rock' do
        expect(subject.result('Paper', 'Rock')).to eq 'win'
      end

      it 'returns "lose" if computer chooses scissors' do
        expect(subject.result('Paper', 'Scissors')).to eq 'lose'
      end

    end

    context 'when player chooses scissors' do

      it 'returns "draw" if computer also chooses scissors' do
        expect(subject.result('Scissors', 'Scissors')).to eq 'draw'
      end

      it 'returns "win" if computer chooses paper' do
        expect(subject.result('Scissors', 'Paper')).to eq 'win'
      end

      it 'returns "lose" if computer chooses rock' do
        expect(subject.result('Scissors', 'Rock')).to eq 'lose'
      end

    end

  end

end
