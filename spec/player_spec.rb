require 'player'

describe Player do
  subject(:player_1) { described_class.new('Josh') }

  describe '#name' do
    it 'returns the players name' do
      expect(player_1.name).to eq 'Josh'
    end
  end
end
