require 'computer'

describe Computer do
  subject(:ai) { described_class.new }

  describe 'new' do
    it 'Initializes with score set to 0' do
      expect(ai.score).to eq 0
    end
    it 'Initializes with move set to an empty string' do
      expect(ai.move).to eq ""
    end
  end

  describe '#set_move' do
    it 'Selects a random move' do
      expect(["Rock", "Paper", "Scissors"]).to include(ai.set_move)
    end
  end

  describe '#increment_score' do
    it 'Increments the score' do
      ai.increment_score
      expect(ai.score).to eq 1
    end
  end
end
