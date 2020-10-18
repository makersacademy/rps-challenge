require './lib/comp_opponent'

describe CompOpponent do
  describe '#comp_moves' do
    it 'has a list of moves' do
      expect(subject.moves).to eq ["Rock", "Paper", "Scissors"]
    end
  end 
end
