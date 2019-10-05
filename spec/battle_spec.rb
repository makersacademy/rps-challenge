require 'battle'

describe Battle do
  describe '#outcome' do
    context 'when player 1 picks Rock' do
      context 'and player 2 picks scissors' do
        it 'returns :win' do
          expect(subject.outcome(:rock, :scissors)).to eq :win
        end
      end

      context 'and player 2 picks Paper' do
        it 'returns :lose' do
          expect(subject.outcome(:rock, :paper)).to eq :lose
        end
      end
      
      context 'and player 2 picks Rock' do
        it 'returns :draw' do
          expect(subject.outcome(:rock, :rock)).to eq :draw
        end
      end
    end

    context 'when player 1 picks Scissors' do
      context 'and player 2 picks scissors' do
        it 'returns :win' do
          expect(subject.outcome(:scissors, :scissors)).to eq :draw
        end
      end

      context 'and player 2 picks Paper' do
        it 'returns :lose' do
          expect(subject.outcome(:scissors, :paper)).to eq :win
        end
      end
      
      context 'and player 2 picks Rock' do
        it 'returns :draw' do
          expect(subject.outcome(:scissors, :rock)).to eq :lose
        end
      end
    end

    context 'when player 1 picks Paper' do
      context 'and player 2 picks scissors' do
        it 'returns :win' do
          expect(subject.outcome(:paper, :scissors)).to eq :lose
        end
      end

      context 'and player 2 picks Paper' do
        it 'returns :lose' do
          expect(subject.outcome(:paper, :paper)).to eq :draw
        end
      end
      
      context 'and player 2 picks Rock' do
        it 'returns :draw' do
          expect(subject.outcome(:paper, :rock)).to eq :win
        end
      end
    end
  end
end