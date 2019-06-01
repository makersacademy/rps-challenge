require 'leaderboard'

describe Leaderboard do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:leaderboard) { described_class.new }

  it 'initializes with empty result array' do
    expect(leaderboard.results).to be_empty
  end
  describe '#add(result)' do
    it 'adds given argument to result log' do
      leaderboard.add(player_1)
      expect(leaderboard.results).to eq [player_1]
    end
  end

  describe '#player_wins(player)' do
    it 'returns number of time argument appears results array' do
      2.times { leaderboard.add(player_1) }
      3.times { leaderboard.add(player_2) }
      expect(leaderboard.player_wins(player_1)).to eq 2
    end
    it 'returns 0 if arg not found in results log' do
      expect(leaderboard.player_wins(player_1)).to eq 0
    end
  end
  describe '#rounds' do
    it 'returns number of results within log' do
      2.times { leaderboard.add(player_1) }
      expect(leaderboard.rounds).to eq 2
    end
  end
end
