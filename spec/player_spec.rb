require 'player'

describe Player do
  subject(:player) { described_class.new('Darth Vader') }
  context '#name' do
    it 'player has a name' do
      expect(player.name).to eq 'Darth Vader'
    end
  end
  context '#add_move' do
    it 'adds chosen move' do
      player.add_move :rock
      expect(player.move).to eq :rock
    end
  end
end
