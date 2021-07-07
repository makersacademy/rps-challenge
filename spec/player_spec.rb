require 'player'

describe Player do
  let(:player) { Player.new("Henry") }

  describe '#name' do
    it 'returns a name when asked' do
      expect(player.name).to eq("Henry")
    end
  end

  describe '#make_move' do
    it 'returns ROCK when the move is made' do
      player.make_move("ROCK")
      expect(player.move).to eq("ROCK")
    end
  end

  describe '#make_random_move' do
    it 'returns a random move when called' do
      player.make_random_move
      expect(player.move).to be_a_kind_of(String)
    end
  end
  
end
