require 'player'

describe Player do

  subject(:player) { Player.new('Tomas') }

  describe '#name' do
    it 'returns the name' do
     expect(player.name).to eq 'Tomas'
    end
  end
end
