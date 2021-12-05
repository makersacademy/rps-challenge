require 'winner'

describe Winner do
  let(:subject) { Winner.new(Player.new('Pikachu')) }

  describe '#with_rock' do
    it 'returns Pikachu' do
      expect(subject.with_rock('scissors')).to eq 'Pikachu'
    end

    it 'returns Bot' do
      expect(subject.with_rock('paper')).to eq 'Bot'
    end

    it 'returns a tie' do
      expect(subject.with_rock('rock')).to eq "Nobody"
    end
  end

  describe '#with_paper' do
    it 'returns Bot' do
      expect(subject.with_paper('scissors')).to eq 'Bot'
    end

    it 'returns Pikachu' do
      expect(subject.with_paper('rock')).to eq 'Pikachu'
    end

    it 'returns a tie' do
      expect(subject.with_paper('paper')).to eq "Nobody"
    end
  end

  describe '#with_scissors' do
    it 'returns a tie' do
      expect(subject.with_scissors('scissors')).to eq "Nobody"
    end

    it 'returns Pikachu' do
      expect(subject.with_scissors('paper')).to eq 'Pikachu'
    end

    it 'returns Bot' do
      expect(subject.with_scissors('rock')).to eq 'Bot'
    end
  end
end
