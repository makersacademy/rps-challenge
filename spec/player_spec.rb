require 'player'

describe Player do
  subject(:player){ described_class.new('Eirik')}

  context 'setting up a new player' do
    it 'incorporates a name passed to it' do
      expect(player.name).to eq('Eirik')
    end
  end

  describe '#make_move' do
    it 'incorporates the move passed to it' do
      player.make_move('Rock')
      expect(player.move).to eq('Rock')
    end

    it 'can only take a value from the moves' do
      expect{player.make_move('Randomn choice')}.to raise_error ArgumentError
    end
  end

end
