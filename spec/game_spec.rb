require 'game'

describe Game do 

  describe '#computer_move' do
    it 'randomises the move of the computer' do 
      game = Game.new
      expect(['Rock', 'Paper', 'Scissor']).to include(game.computer_move)
    end 
  end 
end 


