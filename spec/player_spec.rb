require 'player'

describe Player do
  subject(:player) { described_class.new('Peter') }

  describe '#name' do
    it 'expected to return player name' do
      expect(player.name).to eq 'Peter'
    end  
  end
end
