require 'player'

describe Player do
  subject(:player) { Player.new('Darryl') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Darryl'
    end
  end

end
