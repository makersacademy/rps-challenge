require 'player'

describe Player do

  subject(:player) { Player.new('Ralph') }

  describe '#name' do
    it 'returns its name' do
      expect(player.name).to eq('Ralph')
    end
  end

end
