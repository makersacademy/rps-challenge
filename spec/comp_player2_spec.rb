require 'comp_player2'

describe CompPlayer2 do
  subject(:opponent) {described_class.new}

  describe '#move' do
    it 'returns a random move' do
      expect([:rock, :paper, :scissors]).to include opponent.move
    end
  end

end
