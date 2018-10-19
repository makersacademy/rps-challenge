require_relative '../model/game'

describe Game do
  let(:player) { double :player, :move => "" }
  context '#cpu_move' do
    it 'returns a random number between 0 and 2' do
      srand(1)
      expect(subject.cpu_move).to eq 1
    end
  end

  context '#move' do
    it 'returns a move based on cpu_move' do
      srand(1)
      expect(subject.move).to eq "Paper"
    end
  end

  context '#cpu_result' do
    it 'calculates who wins out of player and cpu' do
      player.move("Scissors")
      expect(subject.cpu_result).to eq true
    end
  end
end
