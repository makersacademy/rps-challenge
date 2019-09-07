require 'player'

describe Player do
  subject(:alpha) { Player.new('Alpha') }

  describe '#name' do
    it 'returns the inputted name of the player' do
      expect(alpha.name).to eq 'Alpha'
    end
  end

  describe '#choice' do
    it 'returns the stored player choice' do
      expect(alpha.tool).to eq 'rock'
    end
  end

end
