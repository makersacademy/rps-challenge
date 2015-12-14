require 'player'

describe Player do

  let(:name) { double(:name) }
  subject(:player) { described_class.new(name) }

  describe '#name' do
    it 'returns player name (or computer)' do
      expect(player.name).to eq name
    end
  end

  describe '#score_up' do
    it 'increases player score by 1' do
      player.score_up
      expect(player.score).to eq 1
    end
  end

  describe '#winner?' do
    it 'returns true if score is 3' do
      described_class::WINNING_SCORE.times { player.score_up }
      expect(player).to be_winner
    end
  end

end
