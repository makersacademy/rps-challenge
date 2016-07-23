require 'ai'

describe Ai do
  subject(:ai) { described_class.new }

  describe '#weapon' do
    it 'chooses a random weapon' do
      srand(0)
      ai.get_weapon
      expect(ai.weapon).to eq "Paper"
    end
  end
end
