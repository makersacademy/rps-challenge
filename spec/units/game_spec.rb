require './app/models/game'

describe Game do
  let(:foo) { double(:mockplayer1)}
  let(:bar) { double(:mockplayer2)}
  subject   { described_class.new(foo, bar)}

  describe 'instantiation' do
    it 'stores first argument as p1' do
      expect(subject.p1).to eq(foo)
    end

    it 'stores second argument as p2' do
        expect(subject.p2).to eq(bar)
    end

    it '#players stores an array of p1 and p2' do
      expect(subject.players).to eq([foo, bar])
    end

    it '@turn is set to p1' do
      expect(subject.turn).to eq(foo)
    end
  end

  describe '#opposite_of' do
    context 'argument is @p1' do
      it 'returns @p2' do
        expect(subject.opposite_of(foo)).to eq(bar)
      end
    end

    context 'argument is @p2' do
      before { allow(subject).to receive(:turn).and_return(bar) }
      it 'returns @p1' do
        expect(subject.opposite_of(bar)).to eq(foo)
      end
    end
  end

  describe 'switch' do
    before { subject.switch}
    context '@turn set to @p1' do
      it 'sets @turn to @p2' do
        expect(subject.turn).to eq(bar)
      end
    end

    context '@turn set to @p2' do
      before { subject.switch}
      it 'sets @turn to @p1' do
        expect(subject.turn).to eq(foo)
      end
    end
  end

  describe '#winner' do
    it 'set to nil on instantiation' do
      expect(subject.winner).to eq(nil)
    end

    it 'set with winner=' do
      subject.winner = foo
      expect(subject.winner).to eq(foo)
    end
  end

  describe '#loser' do
    it 'returns opposite of winner' do
      subject.winner = foo
      expect(subject.loser).to eq(bar)
    end
  end
end
