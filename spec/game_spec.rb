require './lib/game'

describe Game do
  describe '#computer_move' do
    it 'generates a random move' do
      move = ["Rock", "Paper", "Scissors"]
      expect(move).to include(Game.new.computer_move)
    end

    
  end
end
