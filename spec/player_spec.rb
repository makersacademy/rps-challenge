require 'player'

describe Player do

  subject(:player) {described_class.new("Felix")}

  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq "Felix" 
    end
  end
end
