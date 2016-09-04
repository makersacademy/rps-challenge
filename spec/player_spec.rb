require 'player'

describe Player do
  subject(:player) {described_class.new('Player')}
  describe '#initialize' do
    it 'saves the name' do
      expect(player.instance_variable_get(:@name)).to eq 'Player'
    end
  end
end
