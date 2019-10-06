require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end

    it 'returns the players move' do
      expect(dave.move("rock")).to eq 'rock'
    end

    it 'returns a random move' do
      allow(dave).to receive(:rand).and_return(2)
      expect(dave.random_move).to eq 'scissors'
    end

end
