require 'player'
require 'computer'
require 'human'

describe Player do
  name = 'J. Bloggs'
  subject(:player) { described_class.new(name) }

  describe '#initialize' do
    it 'stores the player name' do
      expect(player.name).to eq name
    end

    it 'calls humans J. Bloggs if given empty name' do
      expect(Human.new('').name).to eq 'J. Bloggs'
    end

    it 'calls computers Computer if given empty name' do
      expect(Computer.new('').name).to eq 'Computer'
    end
  end
end
