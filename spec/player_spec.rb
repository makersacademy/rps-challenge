require 'player'

describe Player do
  subject(:player) { Player.new('Heather') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Heather'
    end
  end

end
