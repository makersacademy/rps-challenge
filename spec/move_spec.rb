require 'move'

describe Move do
  subject(:move) {described_class.new}
  let(:p1_move) {:rock}
  let(:computer) {:scissors}

  context 'Outcome of moves' do
    describe 'when moves are different' do
      it '#wins' do
        expect(move.wins(p1_move, computer)).to eq true
      end
    end

    describe 'when are the same' do
      it '#draws' do
        expect(move.draw(p1_move, computer)).to eq false
      end
    end

    describe '#outcome' do
      it 'displays the outcome of the game' do
        expect(move.outcome(p1_move, computer)).to eq :Win
      end
    end
  end
end
