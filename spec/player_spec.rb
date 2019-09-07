require 'player'

describe Player do
  subject(:alpha) { Player.new('Alpha') }

  describe '#name' do
    it 'returns the inputted name of the player' do
      expect(alpha.name).to eq 'Alpha'
    end
  end
  
end
