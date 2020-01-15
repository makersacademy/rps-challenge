require 'player'

describe Player do
  subject(:fergus) { Player.new('Fergus') }

  describe '#name' do
    it 'returns the players name' do
      expect(fergus.name).to eq('Fergus')
    end
  end

  describe '#result' do
    it 'returns player 1 has won' do
      srand(45670)
      expect(fergus.result).to eq("Fergus Wins")
    end
  end
end
