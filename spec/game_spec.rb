require 'game'

describe Game do 

  describe '#computer_move' do
    it 'randomises the move of the computer' do 
      game = Game.new('Josh', 'Peter')
      expect(['Rock', 'Paper', 'Scissor']).to include(game.computer_move)
    end 
  end 

  describe '#player1' do 
    it 'stores the two players name' do
      game = Game.new('Josh', 'Peter')
      expect(game.player1).to eq 'Josh'
    end 
  end 

  describe '#move1' do 
    it 'stores the first move' do 
      game = Game.new('Josh', 'Peter')
      game.move1 = 'Rock'
      expect(game.move1).to eq('Rock')
    end
  end 

  # describe '#move2' do 
  #   it 'stores the second move' do 
  #     game = Game.new
  #     expect(game.move2('Paper')).to eq('Paper')
  #   end 
  # end

  describe '#result' do
    it 'recognises a win' do 
      game = Game.new('Josh', 'Peter')
      game.move1 = 'Rock'
      game.move2 = 'Scissor'
      expect(game.result(game.move1, game.move2)).to eq("#{game.player1} is the winner!")
    end 

    it 'recognises a draw' do 
      game = Game.new('Josh', 'Peter')
      game.move1 = 'Rock'
      game.move2 = 'Rock'
      expect(game.result(game.move1, game.move2)).to eq("It's a DRAW!")
    end 

    it 'recognises a loss' do 
      game = Game.new('Josh', 'Peter')
      game.move1 = 'Scissor'
      game.move2 = 'Rock'
      expect(game.result(game.move1, game.move2)).to eq("Sorry, this time #{game.player2} is the winner.")
    end 
  end 
end
