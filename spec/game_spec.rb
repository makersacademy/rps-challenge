require './lib/game'
describe Game do
  let(:player_class) { double :player_class, new: player         }
  let(:player)       { double :player, name: 'Jack'              }
  let(:subject)      { described_class.new(player_class, 'Jack') }
  context 'core methods' do
    describe '#score' do
      it { expect(subject).to respond_to(:score) }
      it { expect(subject.score).to eq([0, 0]) }
    end
    describe '#players' do
      it { expect(subject).to respond_to(:players) }
      it { expect(subject.players.first).to eq(player) }
    end
    describe '#names' do
      it { expect(subject).to respond_to(:names) }
      it { expect(subject.names[0]).to eq('Jack') }
    end
    describe '#move' do
      it { expect(subject).to respond_to(:move) }
    end
    describe '#make_move' do
      it { expect(subject).to respond_to(:make_move).with(2).arguments }
    end
    describe '#rand_choice' do
      it { expect(subject).to respond_to(:rand_choice) }
      it { expect(subject.rand_choice).to be_a(String) }
    end
    describe 'winners and loosers' do
      it { expect(Game::WINNERS).to eq([[:Scissors, :Paper], [:Paper, :Rock], [:Rock, :Scissors]]) }
    end
  end
  context 'Move combinations' do
    describe 'p1_Rock beats p2_scissors' do
      it { expect(subject.move('Rock', 'Scissors')).to eq([1, 0]) }
    end
    describe 'p2_paper beats p1_rock' do
      it { expect(subject.move('Rock', 'Paper')).to eq([0, 1]) }
    end
    describe 'p1_scissors beats p2_paper' do
      it { expect(subject.move('Scissors', 'Paper')).to eq([1, 0]) }
    end
    describe 'all draws work correctly' do
      it { expect(subject.move('Rock', 'Rock')).to eq([0, 0]) }
      it { expect(subject.move('Paper', 'Paper')).to eq([0, 0]) }
      it { expect(subject.move('Scissors', 'Scissors')).to eq([0, 0]) }
    end
  end
end
