require 'game'
describe Game do 
  game = Game.new("Rock")
  describe '#player2_move' do 
    it 'returns rock, paper or scissors only' do 
      expect(['Rock', 'Paper', 'Scissors']).to include (game.player2_move)
    end

  end
  context 'Game logic' do 
    it 'Rock beats Scissors' do 

    end
    it 'Paper beats Rock' do 
  
    end
    it 'Scissors beats Paper' do 
  
    end
  end
  
end
