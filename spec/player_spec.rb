require 'player'

describe Player do
  subject(:gawain) { Player.new('Gawain')}

  describe '#name' do
    it 'returns the name' do
      expect(gawain.name).to eq "Gawain"
    end
  end

  describe '#move' do
    it 'stores the move' do
      move = 'rock'
      gawain.play(move)
      expect(gawain.move).to eq move
    end
  end
end
