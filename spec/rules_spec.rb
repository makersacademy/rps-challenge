require 'rules'

describe Rules do
  subject(:rules) { described_class.new }

  describe '#winner' do
    it 'returns DRAW if the player and computer gives the same value' do
      expect(rules.winner(0,0)).to eq 'DRAW'
    end
    it 'returns COMPUTER WON if the player gives rock and computer gives paper' do
      expect(rules.winner(0,1)).to eq 'COMPUTER WON'
    end

    it 'returns DRAW if the player and computer gives the same value' do
      expect(rules.winner(1, 1)).to eq 'DRAW'
    end
    it 'returns DRAW if the player and computer gives the same value' do
      expect(rules.winner(2, 2)).to eq 'DRAW'
    end
    it 'returns DRAW if the player and computer gives the same value' do
      expect(rules.winner(3, 3)).to eq 'DRAW'
    end
    it 'returns DRAW if the player and computer gives the same value' do
      expect(rules.winner(4, 4)).to eq 'DRAW'
    end
    it 'returns COMPUTER WON if the player gives rock and computer gives paper' do
      expect(rules.winner(0, 1)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives rock and computer gives scissors' do
      expect(rules.winner(0, 2)).to eq 'PLAYER WON'
    end
    it 'returns PLAYER WON if the player gives rock and computer gives lizard' do
      expect(rules.winner(0, 4)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives rock and computer gives spock' do
      expect(rules.winner(0, 3)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives paper and computer gives rock' do
      expect(rules.winner(1, 0)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives paper and computer gives scissors' do
      expect(rules.winner(1, 2)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives paper and computer gives spock' do
      expect(rules.winner(1, 3)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives paper and computer gives lizard' do
      expect(rules.winner(1, 4)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives scissors and computer paper ' do
      expect(rules.winner(2, 1)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives scissors and computer gives rock' do
      expect(rules.winner(2, 0)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives scissors and computer gives lizard' do
      expect(rules.winner(2, 4)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives scissors and computer gives spock' do
      expect(rules.winner(2, 3)).to eq 'COMPUTER WON'
    end
    it 'returns COMPUTER WON if the player gives lizard and computer gives rock' do
      expect(rules.winner(4, 0)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives lizard and computer gives paper' do
      expect(rules.winner(4, 1)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives lizard and computer gives scissors' do
      expect(rules.winner(4, 2)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives lizard and computer gives spock' do
      expect(rules.winner(4, 3)).to eq 'PLAYER WON'
    end
    it 'returns PLAYER WON if the player gives spock and computer gives rock' do
      expect(rules.winner(3, 0)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives spock and computer gives paper' do
      expect(rules.winner(3, 1)).to eq 'COMPUTER WON'
    end
    it 'returns PLAYER WON if the player gives spock and computer gives scissors' do
      expect(rules.winner(3, 2)).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives spock and computer gives lizard' do
      expect(rules.winner(3, 4)).to eq 'COMPUTER WON'
    end
  end
end
