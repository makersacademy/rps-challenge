require 'opponent'

describe Opponent do
  let(:rps_pc) { described_class.new}

  describe '#random_weapon' do
    it 'lets the pc choose a random weapon' do
      expect(Opponent::WEAPONS_AVAILABLE).to include rps_pc.random_weapon
    end
  end
end
