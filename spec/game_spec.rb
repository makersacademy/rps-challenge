require 'game'

describe Game do
  let(:handler) { double(:handler) }
  let(:p1) { double(:p1, name: 'p1', score: 0) }
  let(:p2) { double(:p2, name: 'p2', score: 0) }
  let(:computer) { double(:player, name: 'computer', score: 0) }
  let(:player_class) { double(:player_class) }

  before(:each) { allow(player_class).to receive(:new).and_return(p1, p2) }
  subject do
    described_class.new('p1', 'p2', handler: handler, player: player_class)
  end

  describe '#initialize' do
    context 'when created' do
      it 'has first player name' do
        expect(subject.p1.name).to eq 'p1'
      end

      it 'has second player name' do
        expect(subject.p2.name).to eq 'p2'
      end

      it 'has score limit' do
        expect(subject.limit).to eq 10
      end
    end

    context 'when created with one player' do
      after(:each) { described_class.new('p1', player: player_class) }

      it 'has computer as second player' do
        expect(player_class).to receive(:new).with('TortoiseBot')
      end
    end

    context 'when created with custom score limit' do
      subject { described_class.new('p1', 'p2', limit: 20) }

      it 'has custom limit' do
        expect(subject.limit).to eq 20
      end
    end
  end

  describe '#resolve' do
    after(:each) { subject.resolve(:a, :b) }

    context 'when player 1 wins' do
      before(:each) { allow(handler).to receive(:compare).and_return(1) }

      it 'increments player 1\'s score' do
        expect(p1).to receive(:increment)
      end
    end

    context 'when player 2 wins' do
      before(:each) { allow(handler).to receive(:compare).and_return(-1) }

      it 'increments player 2\'s score' do
        expect(p2).to receive(:increment)
      end
    end

    context 'when players draw' do
      before(:each) { allow(handler).to receive(:compare).and_return(0) }

      it 'does not increment player 1' do
        expect(p1).not_to receive(:increment)
      end

      it 'does not increment player 2' do
        expect(p2).not_to receive(:increment)
      end
    end

    context 'when game over' do
      before(:each) { allow(subject).to receive(:over?).and_return(true) }

      it 'does not increment player 1' do
        expect(p1).not_to receive(:increment)
      end

      it 'does not increment player 2' do
        expect(p2).not_to receive(:increment)
      end
    end
  end

  describe '#over?' do
    context 'when not over' do
      it 'returns false' do
        expect(subject).to_not be_over
      end
    end

    context 'when over' do
      before(:each) { allow(p1).to receive(:score).and_return(10) }

      it 'returns true' do
        expect(subject).to be_over
      end
    end
  end 
end
