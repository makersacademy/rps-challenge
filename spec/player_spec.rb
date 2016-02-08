require 'player'

describe Player do
  subject(:player) {described_class.new('Tristan')}

  describe 'name' do
    it 'should return the player name' do
      expect(player.name).to eq 'Tristan'
    end
  end
end
