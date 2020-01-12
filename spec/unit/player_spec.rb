require 'player'

describe Player do

  subject(:player) { described_class.new('name') }
  describe '#increment_score' do
    it 'increases or reduces score' do
      expect { player.increment_score(0) }.to change { player.score }.by 0
    end
  end

  describe '#random choice - for computerised player' do
    it 'returns the first answer of random choice - "Rock"' do
      srand 0
      expect(subject.random_choice).to eq("Rock")
    end
  end
end
