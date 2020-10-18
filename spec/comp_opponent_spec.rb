require './lib/comp_opponent'

describe CompOpponent do
  describe '#comp_moves' do
    it 'has a list of moves' do
      expect(subject.moves).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe '#comp_move' do
    it 'can choose a move for the comp_opponent' do
      srand(2)
      expect(subject.comp_move).to eq "Rock"
    end
  end      

  describe '#comp_move' do
    it 'can choose a move for the comp_opponent' do
      srand(3)
      expect(subject.comp_move).to eq "Scissors"
    end
  end     
  
  describe '#comp_move' do
    it 'can choose a move for the comp_opponent' do
      srand(1)
      expect(subject.comp_move).to eq "Paper"
    end
  end
end
