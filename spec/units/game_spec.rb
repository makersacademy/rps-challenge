require './app/models/game'

describe Game do
  let(:foo) { double(:mockplayer1) }
  let(:bar) { double(:mockplayer2) }
  subject   { described_class.new(foo, bar) }

  describe 'instantiation' do
    it 'stores first argument as player1' do
      expect(subject.player1).to eq(foo)
    end

    it 'stores second argument as player2' do
      expect(subject.player2).to eq(bar)
    end

    it '#players stores an array of player1 and player2' do
      expect(subject.players).to eq([foo, bar])
    end

    it '@on_turn is set to player1' do
      expect(subject.on_turn).to eq(foo)
    end

    it 'winner set to nil on instantiation' do
      expect(subject.winner).to eq(nil)
    end
  end

  # refactor!!!
  describe 'switch' do
    before { subject.switch }
    context '@on_turn set to @player1' do
      it 'sets @on_turn to @player2' do
        expect(subject.on_turn).to eq(bar)
      end

      it 'sets @off_turn to @player1' do
        expect(subject.off_turn).to eq(foo)
      end
    end

    context '@on_turn set to @player2' do
      before { subject.switch }
      it 'sets @on_turn to @player1' do
        expect(subject.on_turn).to eq(foo)
      end
      it 'sets @off_turn to @player2' do
        expect(subject.off_turn).to eq(bar)
      end
    end
  end

  describe '#loser' do
    it 'returns opposite of winner' do
      allow(subject).to receive(:winner).and_return(foo)
      expect(subject.loser).to eq(bar)
    end
  end

  # have i tested delegation correctly?
  describe '#make_move - sets move for p1 and p2' do
    before do
      allow(foo).to receive(:move=)
      allow(bar).to receive(:move=)
      subject.make_move(:hello, :test)
    end
    it 'foo receives call for move= with :hello' do
      expect(foo).to have_received(:move=).with(:hello)
    end
    it 'bar receives call for move= with :test' do
      expect(bar).to have_received(:move=).with(:test)
    end
  end

  describe '#calculate_winner' do
    context 'p1 beats p2' do
      before do
        allow(foo).to receive(:move).and_return(:rock)
        allow(bar).to receive(:move).and_return(:scissors)
        subject.calculate_winner
      end
      it 'winner is set to p1' do
        expect(subject.winner).to eq(foo)
      end
    end
    context 'p2 beats p1' do
      before do
        allow(foo).to receive(:move).and_return(:paper)
        allow(bar).to receive(:move).and_return(:scissors)
        subject.calculate_winner
      end
      it 'winner is set to p2' do
        expect(subject.winner).to eq(bar)
      end
    end
    context 'p1 draws with p2' do
      before do
        allow(foo).to receive(:move).and_return(:scissors)
        allow(bar).to receive(:move).and_return(:scissors)
        subject.calculate_winner
      end
      it 'winner is set to :tie' do
        expect(subject.winner).to eq(:tie)
      end
    end
  end

  describe '#multiplayer' do
    it 'returns true if p2 is a Computer object' do
      allow(bar).to receive(:is_a?).with(Computer).and_return(true)
      expect(subject.multiplayer?).to eq(false)
    end

    it 'returns false if p2 is not a Computer object' do
      allow(bar).to receive(:is_a?).with(Computer).and_return(false)
      expect(subject.multiplayer?).to eq(true)
    end
  end

  describe '#tie?' do
    context 'winner is equal to :tie' do
      it 'returns true if winner is equal to :tie' do
        allow(subject).to receive(:winner).and_return(:tie)
        expect(subject.tie?).to eq(true)
      end
    end

    context 'winner is not equal to :tie' do
      it 'returns false if winner is not equal to :tie' do
        allow(subject).to receive(:winner).and_return(foo)
        expect(subject.tie?).to eq(false)
      end
    end
  end
end
