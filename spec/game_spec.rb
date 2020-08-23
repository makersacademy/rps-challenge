require 'game'

describe Game do

  let(:subject) { described_class.new('Charlotte') }

  describe '#cpu' do
    it 'recieves the cpu move' do
      srand(1)
      allow(subject).to receive(:sample).and_return('paper')
      expect(subject.cpu).to eq 'paper'
    end
  end

  describe '#player' do
    it 'recieves the player move' do
      expect(subject.player('rock')).to eq 'rock'
    end
  end
 
  describe '#outcome' do
    it 'expects to return draw' do
      subject.cpu
      srand(0)
      allow(subject).to receive(:sample).and_return('rock')
      subject.player('rock')
      expect(subject.outcome).to eq 'draw'
    end
    it 'expects player to lose' do
      subject.cpu
      srand(0)
      allow(subject).to receive(:sample).and_return('rock')
      subject.player('scissors')
      expect(subject.outcome).to eq 'lose'
    end
    it 'expects player to win' do
      subject.cpu
      srand(0)
      allow(subject).to receive(:sample).and_return('rock')
      subject.player('paper')
      expect(subject.outcome).to eq 'win'
    end
  end

end
