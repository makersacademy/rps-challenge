require 'ai'

describe Ai do
  subject(:ai) { described_class.new }

  describe '#weapons' do
    it 'chooses a random weapon' do
      srand(0)
      ai.set_weapon
      expect(ai.weapon).to eq :Paper
    end
  end
end
