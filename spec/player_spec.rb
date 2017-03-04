require 'player'

describe Player do
  subject(:player){Player.new('Susie')}

  describe 'name' do
    it 'knows its own name' do
      expect(player.name).to eq 'Susie'
    end
  end
end
