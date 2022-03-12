require 'player'

describe Player do

  subject(:player) { described_class.new('Valentina') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Valentina'
    end
  end

  describe '#choose_attack' do
    it 'select one option to attack' do
      expect(player.choose_attack('Rock')).to eq 'Rock'
    end
  end
end
