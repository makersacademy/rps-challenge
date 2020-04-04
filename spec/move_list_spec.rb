require 'move_list'

describe MoveList do
  context 'invalid moves' do
    it 'errors if a move is invalid' do
      expect { subject.store_move('invalid_move') }.to raise_error(ArgumentError, 'invalid player move')
    end
  end

  describe '#full?' do
    it 'tells you if the list is full' do
      subject.store_move(MoveList::ROCK)
      subject.store_move(MoveList::SCISSORS)
      expect(subject.full?).to eq true
    end

    it 'tells you if the list is not full' do
      subject.store_move(MoveList::SCISSORS)
      expect(subject.full?).to eq false
    end
  end

  describe '#resolve_moves' do
    context 'player 1 plays rock' do
      it 'beats scissors' do
        subject.store_move(MoveList::ROCK)
        subject.store_move(MoveList::SCISSORS)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq 'Phil wins - rock blunts scissors'
      end

      it 'draws with rock' do
        subject.store_move(MoveList::ROCK)
        subject.store_move(MoveList::ROCK)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq "It's a draw - both players chose rock"
      end

      it 'loses to paper' do
        subject.store_move(MoveList::ROCK)
        subject.store_move(MoveList::PAPER)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq 'Su wins - paper wraps rock'
      end
    end

    context 'player 1 plays paper' do
      it 'beats rock' do
        subject.store_move(MoveList::PAPER)
        subject.store_move(MoveList::ROCK)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq 'Phil wins - paper wraps rock'
      end

      it 'draws with paper' do
        subject.store_move(MoveList::PAPER)
        subject.store_move(MoveList::PAPER)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq "It's a draw - both players chose paper"
      end

      it 'loses to scissors' do
        subject.store_move(MoveList::PAPER)
        subject.store_move(MoveList::SCISSORS)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq 'Su wins - scissors cut paper'
      end
    end

    context 'player 1 plays scissors' do
      it 'beats paper' do
        subject.store_move(MoveList::SCISSORS)
        subject.store_move(MoveList::PAPER)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq 'Phil wins - scissors cut paper'
      end

      it 'draws with scissors' do
        subject.store_move(MoveList::SCISSORS)
        subject.store_move(MoveList::SCISSORS)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq "It's a draw - both players chose scissors"
      end

      it 'loses to rock' do
        subject.store_move(MoveList::SCISSORS)
        subject.store_move(MoveList::ROCK)
        expect(subject.resolve_moves(['Phil', 'Su'])).to eq 'Su wins - rock blunts scissors'
      end
    end
  end
end
