require 'game'

describe Game do
  let(:subject) { Game.new(Player.new('Pikachu')) }

  describe '#winner_with_rock' do
    it 'returns Pikachu' do
      expect(subject.winner_with_rock('scissors')).to eq 'Pikachu'
    end

    it 'returns Bot' do
      expect(subject.winner_with_rock('paper')).to eq 'Bot'
    end

    it 'returns a tie' do
      expect(subject.winner_with_rock('rock')).to eq "Nobody"
    end
  end

  describe '#winner_with_paper' do
    it 'returns Bot' do
      expect(subject.winner_with_paper('scissors')).to eq 'Bot'
    end

    it 'returns Pikachu' do
      expect(subject.winner_with_paper('rock')).to eq 'Pikachu'
    end

    it 'returns a tie' do
      expect(subject.winner_with_paper('paper')).to eq "Nobody"
    end
  end

  describe '#winner_with_scissors' do
    it 'returns a tie' do
      expect(subject.winner_with_scissors('scissors')).to eq "Nobody"
    end

    it 'returns Pikachu' do
      expect(subject.winner_with_scissors('paper')).to eq 'Pikachu'
    end

    it 'returns Bot' do
      expect(subject.winner_with_scissors('rock')).to eq 'Bot'
    end
  end
end
