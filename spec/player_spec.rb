require 'player'

describe Player do
  subject(:player) { Player.new('Tim') }

  describe '#name' do
    it 'gives the name' do
      expect(player.name).to eq('Tim')
    end
  end

end
