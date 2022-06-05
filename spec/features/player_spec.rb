require 'player'

describe Player do
  subject(:player) { Player.new('Player') }
  subject(:computer) { Player.new('Computer') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Player'
    end
  end
end