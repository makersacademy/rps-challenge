require 'game'

describe Game do 

  describe '#computer_move' do
    it 'randomises the move of the computer' do 
      game = Game.new
      expect(['Rock', 'Paper', 'Scissor']).to include(game.computer_move)
    end 
  end 

  describe '#result' do
    it 'recognises a win' do 
      game = Game.new
      player = 'Rock'
      computer = 'Scissor'
      expect(game.result(player, computer)).to eq("You Win")
    end 

    it 'recognises a draw' do 
      game = Game.new
      player = 'Rock'
      computer = 'Rock'
      expect(game.result(player, computer)).to eq("It's a DRAW!")
    end 

    it 'recognises a loss' do 
      game = Game.new
      player = 'Scissor'
      computer = 'Rock'
      expect(game.result(player, computer)).to eq("You Lose")
    end 
  end 
end 


