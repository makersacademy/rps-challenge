require_relative '../model/game'

describe Game do
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
end
