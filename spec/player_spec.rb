require 'player'

describe Player do

  subject(:player) { Player.new('John') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'John'
    end
  end
end
