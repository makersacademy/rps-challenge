require 'player'

describe Player do
  subject(:player_1) { Player.new('Adam F') }

  describe '#initialize' do
    it 'creates a name' do
      expect(player_1.name).to eq 'Adam F'
    end
  end
end
