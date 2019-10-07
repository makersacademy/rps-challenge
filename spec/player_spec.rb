require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }

  describe '#name' do
    it 'returns the name' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#wins' do
    it 'returns the wins so far' do
      expect(bob.wins).to eq described_class::DEFAULT_WINS
    end
  end
end
