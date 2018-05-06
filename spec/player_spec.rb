require 'player'

describe Player do
  subject(:player) { described_class.new('Bob') }

  describe '#name' do
    it 'saves input name as an instance variable' do
      expect(player.name).to eq('Bob')
    end
  end

  describe '#move' do
    it 'saves the players move as an instance variable' do
      player.input_move(1)
      expect(player.move).to eq(1)
    end
  end
end
