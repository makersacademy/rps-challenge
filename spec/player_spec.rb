require 'player'

describe Player do
  subject(:player) { Player.new('Dom') }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq 'Dom'
    end
  end
end
